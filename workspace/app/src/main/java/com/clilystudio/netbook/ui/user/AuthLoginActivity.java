package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Toast;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.*;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.e;
import com.squareup.otto.Subscribe;

import java.util.HashMap;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qzone.QZone;

public class AuthLoginActivity extends BaseActivity implements Handler.Callback {
    private String a;
    private Animation b = null;
    private View c = null;
    private com.e.a.a.g.a e;

    public static Intent a(Context context) {
        return new com.clilystudio.netbook.d().a(context, AuthLoginActivity.class).a();
    }

    static /* synthetic */ void a(AuthLoginActivity authLoginActivity) {
        authLoginActivity.findViewById(R.id.login_layout).setVisibility(4);
        if (authLoginActivity.e == null) {
            authLoginActivity.e = com.e.a.a.g.c.a(authLoginActivity, "wx29eb03c379f4bf24", false);
        }
        if (!authLoginActivity.e.a()) {
            com.clilystudio.netbook.util.e.a((Activity) authLoginActivity, (int) R.string.alarm_no_install_weixin);
            return;
        }
        authLoginActivity.e.a("wx29eb03c379f4bf24");
        com.e.a.a.e.c c2 = new com.e.a.a.e.c();
        c2.a = "snsapi_userinfo";
        c2.b = "zhuishushenqi";
        authLoginActivity.e.a(c2);
        com.clilystudio.netbook.util.e.a((Activity) authLoginActivity, (String) "\u6b63\u5728\u8bf7\u6c42\u5fae\u4fe1\u6388\u6743...");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    static /* synthetic */ void a(AuthLoginActivity authLoginActivity, View view) {
        try {
            if (authLoginActivity.c != null) {
                authLoginActivity.c.clearAnimation();
            }
            if (authLoginActivity.b == null) {
                authLoginActivity.b = AnimationUtils.loadAnimation(authLoginActivity, R.anim.login_scale);
            }
            view.startAnimation(authLoginActivity.b);
        } catch (Exception var2_2) {
        }
        authLoginActivity.c = view;
    }

    static /* synthetic */ void a(AuthLoginActivity authLoginActivity, String string) {
        authLoginActivity.findViewById(R.id.login_layout).setVisibility(4);
        final Handler handler = new Handler(authLoginActivity);
        Platform platform = ShareSDK.getPlatform(authLoginActivity, string);
        platform.setPlatformActionListener(new PlatformActionListener() {
            @Override
            public void onComplete(Platform platform, int i, HashMap<String, Object> hashMap) {
                Message message = new Message();
                message.arg1 = 1;
                message.arg2 = i;
                message.obj = platform;
                handler.sendMessage(message);
            }

            @Override
            public void onError(Platform platform, int i, Throwable throwable) {
                throwable.printStackTrace();
                Message message = new Message();
                message.arg1 = 2;
                message.arg2 = i;
                message.obj = platform;
                handler.sendMessage(message);
            }

            @Override
            public void onCancel(Platform platform, int i) {
                Message message = new Message();
                message.arg1 = 3;
                message.arg2 = i;
                message.obj = platform;
                handler.sendMessage(message);
            }
        });
        platform.authorize();
    }

    static /* synthetic */ String b(AuthLoginActivity authLoginActivity, String string) {
        authLoginActivity.a = string;
        return string;
    }

    private void a(View view) {
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == 0) {
                    AuthLoginActivity.a(AuthLoginActivity.this, v);
                    return false;
                }
                if (event.getAction() != 1) return false;
                v.clearAnimation();
                return false;
            }
        });
    }

    @Override
    public boolean handleMessage(Message message) {
        Platform platform = (Platform) message.obj;
        switch (message.arg1) {
            default: {
                return false;
            }
            case 1: {
                String string = platform.getDb().getUserId();
                String string2 = platform.getDb().getToken();
                if (string != null && string2 != null) {
                    com.clilystudio.netbook.a_pack.c<String, Account> f2 = new c<String, Account>((Activity) this, R.string.login_loading){

                        @Override
                        public Account a(String... var1) {
                            com.clilystudio.netbook.api.b.a();
                            return com.clilystudio.netbook.api.b.b().g(var1[0], var1[1], var1[2]);
                        }

                        @Override
                        public void a(Account account) {
                            if (account != null && account.getUser() != null && account.getToken() != null) {
                                if (account.isOk()) {
                                    com.clilystudio.netbook.api.b.a();
                                    com.clilystudio.netbook.api.b.b().h(account.getUser().getId());
                                    com.clilystudio.netbook.hpay100.a.a.a(AuthLoginActivity.this, account.getUser().getId());
                                    MyApplication.a().a(account);
                                    com.clilystudio.netbook.event.t t2 = new com.clilystudio.netbook.event.t(account);
                                    t2.a((AuthLoginActivity.Source) ((Object) AuthLoginActivity.this.getIntent().getSerializableExtra("KEY_SOURCE")));
                                    i.a().post(t2);
                                    com.clilystudio.netbook.util.e.a((Activity) AuthLoginActivity.this, "登录成功");
                                } else {
                                    String string = account.getCode();
                                    if ("AUTHENTICATION_FAILED".equals(string)) {
                                        com.clilystudio.netbook.util.e.a((Activity) AuthLoginActivity.this, R.string.auth_invalid);
                                    } else if ("BANNED_USER".equals(string)) {
                                        com.clilystudio.netbook.util.e.a((Activity) AuthLoginActivity.this, "登录失败，该账户被封禁");
                                    } else {
                                        com.clilystudio.netbook.util.e.a((Activity) AuthLoginActivity.this, "登录失败，请重试");
                                    }
                                }
                            } else {
                                com.clilystudio.netbook.util.e.a((Activity) AuthLoginActivity.this, "登录失败，请检查网络或者稍后再试");
                            }
                            AuthLoginActivity.this.finish();
                       }
                    };
                    String[] arrstring = new String[]{this.a, string, string2};
                    f2.b(arrstring);
                    return false;
                }
                Toast.makeText((Context) this, "授权异常，请重新授权", 0).show();
                this.finish();
                return false;
            }
            case 2: {
                Toast.makeText((Context) this, this.a + "\u6388\u6743\u5931\u8d25", 0).show();
                this.finish();
                return false;
            }
            case 3:
        }
        Toast.makeText((Context) this, this.a + "\u6388\u6743\u88ab\u53d6\u6d88", 0).show();
        this.finish();
        return false;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_login);
        this.setTitle("");
        ShareSDK.initSDK(this);
        Window window = this.getWindow();
        WindowManager.LayoutParams layoutParams = window.getAttributes();
        layoutParams.dimAmount = 0.7f;
        window.setAttributes(layoutParams);
        this.b = AnimationUtils.loadAnimation(this, R.anim.login_scale);
        this.a(this.findViewById(R.id.tv_sina));
        this.findViewById(R.id.tv_sina).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AuthLoginActivity.a(AuthLoginActivity.this, v);
                AuthLoginActivity.a(AuthLoginActivity.this, SinaWeibo.NAME);
                AuthLoginActivity.b(AuthLoginActivity.this, "SinaWeibo");
            }
        });
        this.a(this.findViewById(R.id.tv_qq));
        this.findViewById(R.id.tv_qq).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AuthLoginActivity.a(AuthLoginActivity.this, v);
                AuthLoginActivity.a(AuthLoginActivity.this, QZone.NAME);
                AuthLoginActivity.b(AuthLoginActivity.this, "QQ");
            }
        });
        this.a(this.findViewById(R.id.tv_weixin));
        this.findViewById(R.id.tv_weixin).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AuthLoginActivity.a(AuthLoginActivity.this, v);
                AuthLoginActivity.a(AuthLoginActivity.this);
            }
        });
        i.a().register(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().unregister(this);
    }

    @Subscribe
    public void onWeixinAuthEvent() {
        this.finish();
    }

    public enum Source {
        HOME, OTHER;
    }
}
