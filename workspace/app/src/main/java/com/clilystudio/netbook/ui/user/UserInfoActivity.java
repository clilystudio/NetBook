package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.u;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.CircularSmartImageView;
import com.clilystudio.netbook.ui.SettingsActivity;
import com.clilystudio.netbook.ui.ShareRemoveAdActivity;
import com.clilystudio.netbook.ui.aa;
import com.clilystudio.netbook.util.J;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

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
        return new d().a(context, UserInfoActivity.class).a("account_token", string).a();
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
        int n3 = com.clilystudio.netbook.util.e.a(n);
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
        Account account = am.e();
        if (account != null) {
            User user = account.getUser();
            user.setNickname(userInfo.getNickname());
            user.setAvatar(userInfo.getAvatar());
            user.setLv(userInfo.getLv());
            MyApplication.a().a(account);
            i.a().post(new com.clilystudio.netbook.event.a());
        }
    }

    static /* synthetic */ void c(UserInfoActivity userInfoActivity) {
        userInfoActivity.a.setVisibility(View.GONE);
        userInfoActivity.b.setVisibility(View.VISIBLE);
    }

    private void b() {
        if (this.c != null) {
            com.clilystudio.netbook.a_pack.e<String, Void, UserInfo> aK2 = new com.clilystudio.netbook.a_pack.e<String, Void, UserInfo>() {

                @Override
                protected UserInfo doInBackground(String... params) {
                    return com.clilystudio.netbook.api.b.b().K(params[0]);
                }

                @Override
                protected void onPostExecute(UserInfo userInfo) {
                    super.onPostExecute(userInfo);
                    UserInfoActivity.c(UserInfoActivity.this);
                    if (userInfo != null) {
                        if (userInfo.isOk()) {
                            UserInfoActivity.a(UserInfoActivity.this, userInfo);
                            MyApplication.a().a(userInfo, "savedObject_userinfo");
                            UserInfoActivity.a(UserInfoActivity.this, userInfo.getNicknameUpdated());
                            UserInfoActivity.a(UserInfoActivity.this, J.a(UserInfoActivity.this).a());
                            UserInfoActivity.b(userInfo);
                        } else {
                            if ("TOKEN_INVALID".equals(userInfo.getCode())) {
                                com.clilystudio.netbook.util.e.a(UserInfoActivity.this, "帐号无效或过期，请退出登录后重试");
                            }
                        }
                    } else {
                        com.clilystudio.netbook.util.e.a(UserInfoActivity.this, "载入失败");
                        UserInfo userInfo2 = (UserInfo) MyApplication.a().b("savedObject_userinfo");
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
        com.clilystudio.netbook.util.e.a(this, "账号异常，请重新授权登录后再试");
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
        this.a(R.string.user_info, "编辑资料", new aa() {
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
        View view = this.findViewById(R.id.user_share_remove_ad);
        if (com.clilystudio.netbook.hpay100.a.a.r(this, "switch_share_remove_ad")) {
            view.setVisibility(View.VISIBLE);
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = ShareRemoveAdActivity.a(UserInfoActivity.this, "userInfo");
                    UserInfoActivity.this.startActivity(intent);
                    MiStatInterface.recordCountEvent("share_remove_entrance_click", "userInfo");
                }
            });
        }
        this.b();
        i.a().register(this);
        MiStatInterface.recordCountEvent("PERSONAL_PAGE_SHOW", null);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().unregister(this);
    }

    @Subscribe
    public void onLogoutEvent(u u2) {
        this.finish();
    }

    @Subscribe
    public void onUserInfoChanged(K k) {
        this.b();
    }
}
