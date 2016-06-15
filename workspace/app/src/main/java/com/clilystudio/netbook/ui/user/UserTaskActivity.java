package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.clilystudio.netbook.am;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class UserTaskActivity extends BaseActivity {
    TextView mExpInfo;
    TextView mExpLaunch;
    TextView mExpShareBook;
    TextView mExpShareTopic;
    TextView mExpVote;
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
        this.mExpInfo = (TextView) findViewById(2131493254);
        this.mExpLaunch = (TextView) findViewById(2131493255);
        this.mExpShareTopic = (TextView) findViewById(2131493256);
        this.mExpShareBook = (TextView) findViewById(2131493257);
        this.mExpVote = (TextView) findViewById(2131493259);
        this.mVoteView = findViewById(2131493258);
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
                this.mVoteView.setVisibility(View.GONE);
            } else {
                this.a(userInfo.getThis_week_tasks().isRate());
            }
        }
        this.mVoteView.setOnClickListener(new aM(this));
    }
}
