package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Toast;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.ui.BaseActivity;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;

public class AuthLoginActivity
        extends BaseActivity
        implements Handler.Callback {
    private String a;
    private Animation b = null;
    private View c = null;
    private com.e.a.a.g.a e;

    public static Intent a(Context context) {
        return new com.clilystudio.netbook.d().a(context, AuthLoginActivity.class).a();
    }

    static /* synthetic */ void a(AuthLoginActivity authLoginActivity) {
        authLoginActivity.findViewById(2131493140).setVisibility(4);
        if (authLoginActivity.e == null) {
            authLoginActivity.e = com.e.a.a.g.c.a(authLoginActivity, "wx29eb03c379f4bf24", false);
        }
        if (!authLoginActivity.e.a()) {
            com.clilystudio.netbook.util.e.a((Activity) authLoginActivity, (int) 2131034303);
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
                authLoginActivity.b = AnimationUtils.loadAnimation(authLoginActivity, 2130968597);
            }
            view.startAnimation(authLoginActivity.b);
        } catch (Exception var2_2) {
        }
        authLoginActivity.c = view;
    }

    static /* synthetic */ void a(AuthLoginActivity authLoginActivity, String string) {
        authLoginActivity.findViewById(2131493140).setVisibility(4);
        Handler handler = new Handler(authLoginActivity);
        Platform platform = ShareSDK.getPlatform(authLoginActivity, string);
        platform.setPlatformActionListener((PlatformActionListener) ((Object) new e(authLoginActivity, handler)));
        platform.authorize();
    }

    static /* synthetic */ String b(AuthLoginActivity authLoginActivity, String string) {
        authLoginActivity.a = string;
        return string;
    }

    private void a(View view) {
        view.setOnTouchListener((View.OnTouchListener) ((Object) new d(this)));
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
                    f f2 = new f(this, (Activity) this, 2131034409);
                    String[] arrstring = new String[]{this.a, string, string2};
                    f2.b(arrstring);
                    return false;
                }
                Toast.makeText((Context) this, "\u6388\u6743\u5f02\u5e38\uff0c\u8bf7\u91cd\u65b0\u6388\u6743", 0).show();
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
        this.setContentView(2130903111);
        this.setTitle("");
        ShareSDK.initSDK(this);
        Window window = this.getWindow();
        WindowManager.LayoutParams layoutParams = window.getAttributes();
        layoutParams.dimAmount = 0.7f;
        window.setAttributes(layoutParams);
        this.b = AnimationUtils.loadAnimation(this, 2130968597);
        this.a(this.findViewById(2131493142));
        this.findViewById(2131493142).setOnClickListener((View.OnClickListener) ((Object) new a(this)));
        this.a(this.findViewById(2131493141));
        this.findViewById(2131493141).setOnClickListener((View.OnClickListener) ((Object) new b(this)));
        this.a(this.findViewById(2131493143));
        this.findViewById(2131493143).setOnClickListener((View.OnClickListener) ((Object) new c(this)));
        i.a().a(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onWeixinAuthEvent$60b4a58a(av av2) {
        if (av2.f()) {
            f f2 = new f(this, (Activity) this, 2131034409);
            String[] arrstring = new String[]{av2.g(), null, av2.e()};
            f2.b(arrstring);
            return;
        }
        Toast.makeText((Context) this, av2.e(), 0).show();
        this.finish();
    }
}
