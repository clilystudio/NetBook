package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.e;

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
            this.mExpVote.setTextColor(this.getResources().getColor(R.color.primary_green));
        }
    }

    @Override
    protected void onActivityResult(int n, int n2, Intent intent) {
        super.onActivityResult(n, n2, intent);
        if (n == 2) {
            new com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus>(){

                @Override
                protected ResultStatus doInBackground(String... params) {
                    return b.b().W(am.e().getToken());
                }

                @Override
                protected void onPostExecute(ResultStatus resultStatus) {
                    super.onPostExecute(resultStatus);
                    if (resultStatus != null && !resultStatus.isOk()) {
                        UserTaskActivity.a(UserTaskActivity.this, true);
                        e.a((Activity) UserTaskActivity.this, (String) "你已经完成这个任务");
                    }
                }
            }.b();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_user_task);
        this.mExpInfo = (TextView) findViewById(R.id.user_exp_info);
        this.mExpLaunch = (TextView) findViewById(R.id.user_exp_launch);
        this.mExpShareTopic = (TextView) findViewById(R.id.user_exp_share_topic);
        this.mExpShareBook = (TextView) findViewById(R.id.user_exp_share_book);
        this.mExpVote = (TextView) findViewById(R.id.user_exp_vote);
        this.mVoteView = findViewById(R.id.user_vote_layout);
        this.b("\u4efb\u52a1");
        UserInfo userInfo = (UserInfo) MyApplication.a().b("savedObject_userinfo");
        this.mExpInfo.setTextColor(this.getResources().getColor(R.color.primary_green));
        this.mExpLaunch.setTextColor(this.getResources().getColor(R.color.primary_green));
        if (userInfo != null) {
            UserInfo.UserTodayTask userInfo$UserTodayTask = userInfo.getToday_tasks();
            if (userInfo$UserTodayTask != null && userInfo$UserTodayTask.isShare()) {
                this.mExpShareTopic.setTextColor(this.getResources().getColor(R.color.primary_green));
            }
            if (userInfo$UserTodayTask != null && userInfo$UserTodayTask.isShare_book()) {
                this.mExpShareBook.setTextColor(this.getResources().getColor(R.color.primary_green));
            }
            if ("xiaomi".equals(am.n((Context) this).toLowerCase())) {
                this.mVoteView.setVisibility(View.GONE);
            } else {
                this.a(userInfo.getThis_week_tasks().isRate());
            }
        }
        this.mVoteView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("market://details?id=" + UserTaskActivity.this.getPackageName()));
                try {
                    UserTaskActivity.this.startActivityForResult(intent, 2);
                    return;
                } catch (ActivityNotFoundException var4_3) {
                    com.clilystudio.netbook.util.e.a(UserTaskActivity.this,"打开应用市场失败");
                    return;
                }
            }
        });
    }
}
