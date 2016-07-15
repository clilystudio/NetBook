package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.AccountUpdatedEvent;
import com.clilystudio.netbook.event.UserInfoChangedEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.LogoutEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.CircularSmartImageView;
import com.clilystudio.netbook.ui.SettingsActivity;
import com.clilystudio.netbook.ui.BaseCallBack;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.util.UserNotificationManager;
import com.squareup.otto.Subscribe;

import java.util.Date;

public class UserInfoActivity extends BaseActivity {
    TextView mExp;
    ProgressBar mExpProgress;
    TextView mLevel;
    TextView mMessageCount;
    TextView mName;
    CircularSmartImageView mPortrait;
    private View a;
    private View b;
    private String c;
    private Date e;

    public static Intent a(Context context, String string) {
        return new IntentBuilder().put(context, UserInfoActivity.class).put("account_token", string).build();
    }

    static /* synthetic */ Date a(UserInfoActivity userInfoActivity, Date date) {
        userInfoActivity.e = date;
        return date;
    }

    static /* synthetic */ void a(UserInfoActivity userInfoActivity) {
        if (userInfoActivity.e == null) {
            userInfoActivity.e = new Date(0);
        }
        userInfoActivity.startActivity(ModifyUserInfoActivity.a(userInfoActivity, userInfoActivity.e.getTime()));
    }

    static /* synthetic */ void a(UserInfoActivity userInfoActivity, int n) {
        if (n > 0) {
            userInfoActivity.mMessageCount.setVisibility(View.VISIBLE);
            userInfoActivity.mMessageCount.setText(String.valueOf(n));
            return;
        }
        userInfoActivity.mMessageCount.setVisibility(View.INVISIBLE);
    }

    static /* synthetic */ void a(UserInfoActivity userInfoActivity, UserInfo userInfo) {
        int n = userInfo.getLv();
        int n2 = userInfo.getExp();
        int n3 = com.clilystudio.netbook.util.a.getLevelExp(n);
        String string = userInfo.getScaleAvatar(2);
        userInfoActivity.mPortrait.setImageUrl(string, R.drawable.avatar_default);
        userInfoActivity.mName.setText(userInfo.getNickname());
        String text = "Lv:" + n;
        userInfoActivity.mLevel.setText(text);
        String text1 = "经验：" + n2 + "/" + n3;
        userInfoActivity.mExp.setText(text1);
        userInfoActivity.mExpProgress.setProgress(n2 * 100 / n3);
    }

    static /* synthetic */ void b(UserInfo userInfo) {
        Account account = CommonUtil.getAccount();
        if (account != null) {
            User user = account.getUser();
            user.setNickname(userInfo.getNickname());
            user.setAvatar(userInfo.getAvatar());
            user.setLv(userInfo.getLv());
            MyApplication.getInstance().saveAccoutInfo(account);
            BusProvider.getInstance().post(new AccountUpdatedEvent());
        }
    }

    static /* synthetic */ void c(UserInfoActivity userInfoActivity) {
        userInfoActivity.a.setVisibility(View.GONE);
        userInfoActivity.b.setVisibility(View.VISIBLE);
    }

    private void b() {
        if (this.c != null) {
            BaseAsyncTask<String, Void, UserInfo> aK2 = new BaseAsyncTask<String, Void, UserInfo>() {

                @Override
                protected UserInfo doInBackground(String... params) {
                    return ApiServiceProvider.getApiService().K(params[0]);
                }

                @Override
                protected void onPostExecute(UserInfo userInfo) {
                    super.onPostExecute(userInfo);
                    UserInfoActivity.c(UserInfoActivity.this);
                    if (userInfo != null) {
                        if (userInfo.isOk()) {
                            UserInfoActivity.a(UserInfoActivity.this, userInfo);
                            MyApplication.getInstance().saveObject(userInfo, "savedObject_userinfo");
                            UserInfoActivity.a(UserInfoActivity.this, userInfo.getNicknameUpdated());
                            UserInfoActivity.a(UserInfoActivity.this, UserNotificationManager.getInstance(UserInfoActivity.this).getImportant());
                            UserInfoActivity.b(userInfo);
                        } else {
                            if ("TOKEN_INVALID".equals(userInfo.getCode())) {
                                ToastUtil.showShortToast(UserInfoActivity.this, "帐号无效或过期，请退出登录后重试");
                            }
                        }
                    } else {
                        ToastUtil.showShortToast(UserInfoActivity.this, "载入失败");
                        UserInfo userInfo2 = (UserInfo) MyApplication.getInstance().loadObject("savedObject_userinfo");
                        if (userInfo2 != null) {
                            UserInfoActivity.a(UserInfoActivity.this, userInfo2);
                        }
                    }
                }
            };
            String[] arrstring = new String[]{this.c};
            aK2.b(arrstring);
            return;
        }
        ToastUtil.showShortToast(this, "账号异常，请重新授权登录后再试");
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_user_info);
        this.mPortrait = (CircularSmartImageView) findViewById(R.id.portrait);
        this.mName = (TextView) findViewById(R.id.name);
        this.mExp = (TextView) findViewById(R.id.exp);
        this.mLevel = (TextView) findViewById(R.id.level);
        this.mExpProgress = (ProgressBar) findViewById(R.id.exp_pregress);
        this.mMessageCount = (TextView) findViewById(R.id.message_count);
        this.a(R.string.user_info, "编辑资料", new BaseCallBack() {
            @Override
            public void a() {
                UserInfoActivity.a(UserInfoActivity.this);
            }
        });
        this.c = this.getIntent().getStringExtra("account_token");
        this.a = this.findViewById(R.id.pb_loading);
        this.b = this.findViewById(R.id.user_info_content);
        this.findViewById(R.id.user_message_block).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(UserInfoActivity.this, MyMessageActivity.class);
                UserInfoActivity.this.startActivity(intent);
            }
        });
        this.findViewById(R.id.user_ugc_block).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(UserInfoActivity.this, UserUGCActivity.class);
                UserInfoActivity.this.startActivity(intent);
            }
        });
        this.findViewById(R.id.user_topic_block).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(UserInfoActivity.this, UserTopicActivity.class);
                UserInfoActivity.this.startActivity(intent);
            }
        });
//        this.findViewById(R.id.user_account_block).setOnClickListener(new View.OnClickListener() {
//            @Override
//            public void onClick(View v) {
//                UserInfoActivity.b(UserInfoActivity.this);
//                MiStatInterface.recordCountEvent("my_account_click", null);
//            }
//        });
        this.findViewById(R.id.user_level_block).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(UserInfoActivity.this, UserLevelActivity.class);
                UserInfoActivity.this.startActivity(intent);
            }
        });
        this.findViewById(R.id.user_task_block).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(UserInfoActivity.this, UserTaskActivity.class);
                UserInfoActivity.this.startActivity(intent);
            }
        });
        this.findViewById(R.id.user_setting_block).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(UserInfoActivity.this, SettingsActivity.class);
                intent.putExtra("from_user_info", true);
                UserInfoActivity.this.startActivity(intent);
            }
        });
        this.b();
        BusProvider.getInstance().register(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Subscribe
    public void onLogoutEvent(LogoutEvent u2) {
        this.finish();
    }

    @Subscribe
    public void onUserInfoChanged(UserInfoChangedEvent k) {
        this.b();
    }
}
