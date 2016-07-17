package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.ToastUtil;

public class UserTaskActivity extends BaseActivity {
    TextView mExpInfo;
    TextView mExpLaunch;
    TextView mExpShareBook;
    TextView mExpShareTopic;
    TextView mExpVote;
    View mVoteView;

    static /* synthetic */ void a(UserTaskActivity userTaskActivity, boolean bl) {
        userTaskActivity.a(bl);
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
            new BaseAsyncTask<String, Void, ResultStatus>(){

                @Override
                protected ResultStatus doInBackground(String... params) {
                    return ApiServiceProvider.getApiService().W(CommonUtil.getAccount().getToken());
                }

                @Override
                protected void onPostExecute(ResultStatus resultStatus) {
                    super.onPostExecute(resultStatus);
                    if (resultStatus != null && !resultStatus.isOk()) {
                        UserTaskActivity.a(UserTaskActivity.this, true);
                        ToastUtil.showShortToast(UserTaskActivity.this, "你已经完成这个任务");
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
        UserInfo userInfo = (UserInfo) MyApplication.getInstance().loadObject("savedObject_userinfo");
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
        }
    }
}
