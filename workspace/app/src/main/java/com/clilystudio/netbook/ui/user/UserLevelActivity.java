package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.e;

import butterknife.ButterKnife;
import butterknife.InjectView;

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
        UserInfo userInfo = (UserInfo) MyApplication.a().b("savedObject_userinfo");
        int n = userInfo.getLv();
        int n2 = userInfo.getExp();
        int n3 = e.a((int) n);
        this.mCurrentLevel.setText("" + n + "\u7ea7");
        this.mLevelProgress.setText("" + n2 + "/" + n3);
        float f = userInfo.getRank();
        TextView textView = this.mLevelRank;
        StringBuilder stringBuilder = new StringBuilder("\u8d85\u8fc7");
        Object[] arrobject = new Object[]{Float.valueOf(f * 100.0f)};
        textView.setText(stringBuilder.append(String.format("%.2f", arrobject)).append("%\u7684\u8ffd\u4e66\u7528\u6237").toString());
        this.mDoTask.setOnClickListener(new aL(this));
    }
}
