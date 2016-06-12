package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.model.UserInfo$UserTodayTask;
import com.clilystudio.netbook.ui.BaseActivity;

import butterknife.ButterKnife;

public class UserTaskActivity extends BaseActivity {

    TextView mExpInfo;
    TextView mExpLaunch;
    TextView mExpShareBook;
    TextView mExpShareTopic;
    TextView mExpVote;
    View mVoteView;

    static void a(UserTaskActivity UserTaskActivity1, boolean boolean2) {
        UserTaskActivity1.a(true);
    }

    private void a(boolean boolean1) {
        if (boolean1)
            mExpVote.setTextColor(getResources().getColor(2131427480));
    }

    protected void onActivityResult(int int1, int int2, Intent Intent3) {
        super.onActivityResult(int1, int2, Intent3);
        if (int1 == 2)
            new aN(this, (byte) 0).b(new String[0]);
    }

    public void onCreate(Bundle Bundle1) {
        UserInfo UserInfo2;

        super.onCreate(Bundle1);
        setContentView(2130903143);
        ButterKnife.inject((Activity) this);
        b("\u4EFB\u52A1");
        UserInfo2 = (UserInfo) MyApplication.a().b("savedObject_userinfo");
        mExpInfo.setTextColor(getResources().getColor(2131427480));
        mExpLaunch.setTextColor(getResources().getColor(2131427480));
        if (UserInfo2 != null) {
            UserInfo$UserTodayTask UserTodayTask3 = UserInfo2.getToday_tasks();

            if (UserTodayTask3 != null && UserTodayTask3.isShare())
                mExpShareTopic.setTextColor(getResources().getColor(2131427480));
            if (UserTodayTask3 != null && UserTodayTask3.isShare_book())
                mExpShareBook.setTextColor(getResources().getColor(2131427480));
            if ("xiaomi".equals(am.n((Context) this).toLowerCase()))
                mVoteView.setVisibility(8);
            else
                a(UserInfo2.getThis_week_tasks().isRate());
        }
        mVoteView.setOnClickListener((View$OnClickListener) new aM(this));
    }
}
