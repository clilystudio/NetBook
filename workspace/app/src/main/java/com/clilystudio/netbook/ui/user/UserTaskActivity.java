package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.model.UserInfo$UserTodayTask;
import com.clilystudio.netbook.ui.BaseActivity;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class UserTaskActivity extends BaseActivity {
    @InjectView(value = 2131493254)
    TextView mExpInfo;
    @InjectView(value = 2131493255)
    TextView mExpLaunch;
    @InjectView(value = 2131493257)
    TextView mExpShareBook;
    @InjectView(value = 2131493256)
    TextView mExpShareTopic;
    @InjectView(value = 2131493259)
    TextView mExpVote;
    @InjectView(value = 2131493258)
    View mVoteView;

    static /* synthetic */ void a(UserTaskActivity userTaskActivity, boolean bl) {
        userTaskActivity.a(true);
    }

    private void a(boolean bl) {
        if (bl) {
            this.mExpVote.setTextColor(this.getResources().getColor(2131427480));
        }
    }

    @Override
    protected void onActivityResult(int n, int n2, Intent intent) {
        super.onActivityResult(n, n2, intent);
        if (n == 2) {
            new aN(this, 0).b(new String[0]);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903143);
        ButterKnife.inject(this);
        this.b("\u4efb\u52a1");
        UserInfo userInfo = (UserInfo) MyApplication.a().b("savedObject_userinfo");
        this.mExpInfo.setTextColor(this.getResources().getColor(2131427480));
        this.mExpLaunch.setTextColor(this.getResources().getColor(2131427480));
        if (userInfo != null) {
            UserInfo$UserTodayTask userInfo$UserTodayTask = userInfo.getToday_tasks();
            if (userInfo$UserTodayTask != null && userInfo$UserTodayTask.isShare()) {
                this.mExpShareTopic.setTextColor(this.getResources().getColor(2131427480));
            }
            if (userInfo$UserTodayTask != null && userInfo$UserTodayTask.isShare_book()) {
                this.mExpShareBook.setTextColor(this.getResources().getColor(2131427480));
            }
            if ("xiaomi".equals(am.n((Context) this).toLowerCase())) {
                this.mVoteView.setVisibility(8);
            } else {
                this.a(userInfo.getThis_week_tasks().isRate());
            }
        }
        this.mVoteView.setOnClickListener(new aM(this));
    }
}
