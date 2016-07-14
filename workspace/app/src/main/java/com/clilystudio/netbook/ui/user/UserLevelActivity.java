package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;

import java.util.Locale;

public class UserLevelActivity extends BaseActivity {
    TextView mCurrentLevel;
    Button mDoTask;
    TextView mLevelProgress;
    TextView mLevelRank;

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_user_level);
        this.mCurrentLevel = (TextView) findViewById(R.id.user_current_level);
        this.mLevelProgress = (TextView) findViewById(R.id.user_level_progress);
        this.mLevelRank = (TextView) findViewById(R.id.user_level_rank);
        this.mDoTask = (Button) findViewById(R.id.go_to_task);
        this.b("\u7ecf\u9a8c\u7b49\u7ea7");
        UserInfo userInfo = (UserInfo) MyApplication.getInstance().loadObject("savedObject_userinfo");
        int n = userInfo.getLv();
        int n2 = userInfo.getExp();
        int n3 = com.clilystudio.netbook.util.a.getLevelExp(n);
        String text = "" + n + "级";
        this.mCurrentLevel.setText(text);
        String text1 = "" + n2 + "/" + n3;
        this.mLevelProgress.setText(text1);
        float f = userInfo.getRank();
        TextView textView = this.mLevelRank;
        StringBuilder stringBuilder = new StringBuilder("\u8d85\u8fc7");
        textView.setText(stringBuilder.append(String.format(Locale.CHINA,"%.2f", f * 100.0f)).append("%的追书用户").toString());
        this.mDoTask.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(UserLevelActivity.this, UserTaskActivity.class);
                UserLevelActivity.this.startActivity(intent);
                UserLevelActivity.this.finish();
            }
        });
    }
}
