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
    @InjectView(value = 2131493248)
    TextView mCurrentLevel;
    @InjectView(value = 2131493253)
    Button mDoTask;
    @InjectView(value = 2131493249)
    TextView mLevelProgress;
    @InjectView(value = 2131493250)
    TextView mLevelRank;

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903142);
        this.mCurrentLevel = (TextView) findViewById(2131493248);
        this.mLevelProgress = (TextView) findViewById(2131493249);
        this.mLevelRank = (TextView) findViewById(2131493250);
        this.mDoTask = (Button) findViewById(2131493253);
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
