package com.clilystudio.netbook.ui.user;

import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
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

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(R.layout.activity_user_level);
        mCurrentLevel = (TextView)findViewById(R.id.user_current_level);
        mDoTask = (Button)findViewById(R.id.go_to_task);
        mLevelProgress = (TextView)findViewById(R.id.user_level_progress);
        mLevelRank = (TextView)findViewById(R.id.user_level_rank);
        b("经验等级");
        UserInfo localUserInfo = (UserInfo) MyApplication.a().b("savedObject_userinfo");
        int i = localUserInfo.getLv();
        int j = localUserInfo.getExp();
        int k = e.a(i);
        this.mCurrentLevel.setText(i + "级");
        this.mLevelProgress.setText(j + "/" + k);
        float f = localUserInfo.getRank();
        TextView localTextView = this.mLevelRank;
        StringBuilder localStringBuilder = new StringBuilder("超过");
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Float.valueOf(f * 100.0F);
        localTextView.setText(String.format("%.2f", arrayOfObject) + "%的追书用户");
        this.mDoTask.setOnClickListener(new aL(this));
    }
}

