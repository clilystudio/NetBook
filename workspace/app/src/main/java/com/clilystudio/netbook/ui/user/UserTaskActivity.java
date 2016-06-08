package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.model.UserInfo.UserTodayTask;
import com.clilystudio.netbook.ui.BaseActivity;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class UserTaskActivity extends BaseActivity {

    @InjectView(2131493254)
    TextView mExpInfo;

    @InjectView(2131493255)
    TextView mExpLaunch;

    @InjectView(2131493257)
    TextView mExpShareBook;

    @InjectView(2131493256)
    TextView mExpShareTopic;

    @InjectView(2131493259)
    TextView mExpVote;

    @InjectView(2131493258)
    View mVoteView;

    private void a(boolean paramBoolean) {
        if (paramBoolean)
            this.mExpVote.setTextColor(getResources().getColor(2131427480));
    }

    protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        if (paramInt1 == 2)
            new aN(this, 0).b(new String[0]);
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903143);
        ButterKnife.inject(this);
        b("任务");
        UserInfo localUserInfo = (UserInfo) MyApplication.a().b("savedObject_userinfo");
        this.mExpInfo.setTextColor(getResources().getColor(2131427480));
        this.mExpLaunch.setTextColor(getResources().getColor(2131427480));
        if (localUserInfo != null) {
            UserInfo.UserTodayTask localUserTodayTask = localUserInfo.getToday_tasks();
            if ((localUserTodayTask != null) && (localUserTodayTask.isShare()))
                this.mExpShareTopic.setTextColor(getResources().getColor(2131427480));
            if ((localUserTodayTask != null) && (localUserTodayTask.isShare_book()))
                this.mExpShareBook.setTextColor(getResources().getColor(2131427480));
            if (!"xiaomi".equals(am.n(this).toLowerCase()))
                break label168;
            this.mVoteView.setVisibility(8);
        }
        while (true) {
            this.mVoteView.setOnClickListener(new aM(this));
            return;
            label168:
            a(localUserInfo.getThis_week_tasks().isRate());
        }
    }
}
