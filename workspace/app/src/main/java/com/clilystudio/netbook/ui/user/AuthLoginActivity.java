package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler$Callback;
import android.os.Message;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnTouchListener;
import android.view.Window;
import android.view.WindowManager$LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Toast;

import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.ui.BaseActivity;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;

public class AuthLoginActivity extends BaseActivity implements Handler$Callback {

    private String a;
    private com.e.a.a.g.a e;
    private Animation b = null;
    private View c = null;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1) {
    }

    static void a(AuthLoginActivity AuthLoginActivity1) {
        AuthLoginActivity1.findViewById(2131493140).setVisibility(4);
        if (AuthLoginActivity1.e == null)
            AuthLoginActivity1.e = com.e.a.a.g.c.a((Context) AuthLoginActivity1, "wx29eb03c379f4bf24", false);
        if (!AuthLoginActivity1.e.a())
            com.clilystudio.netbook.util.e.a((Activity) AuthLoginActivity1, 2131034303);
        else {
            Object Object3;

            AuthLoginActivity1.e.a("wx29eb03c379f4bf24");
            Object3 = new com.e.a.a.e.c();
            ((com.e.a.a.e.c) Object3).a = "snsapi_userinfo";
            ((com.e.a.a.e.c) Object3).b = "zhuishushenqi";
            AuthLoginActivity1.e.a((com.e.a.a.d.a) Object3);
            com.clilystudio.netbook.util.e.a((Activity) AuthLoginActivity1, "\u6B63\u5728\u8BF7\u6C42\u5FAE\u4FE1\u6388\u6743...");
        }
    }

    static void a(AuthLoginActivity AuthLoginActivity1, View View2) {
        try {
            if (AuthLoginActivity1.c != null)
                AuthLoginActivity1.c.clearAnimation();
            if (AuthLoginActivity1.b == null)
                AuthLoginActivity1.b = AnimationUtils.loadAnimation((Context) AuthLoginActivity1, 2130968597);
            View2.startAnimation(AuthLoginActivity1.b);
        } catch (Exception Exception3) {
        }
        AuthLoginActivity1.c = View2;
    }

    static void a(AuthLoginActivity AuthLoginActivity1, String String2) {
        Handler Handler3;
        Platform Platform4;

        AuthLoginActivity1.findViewById(2131493140).setVisibility(4);
        Handler3 = new Handler(AuthLoginActivity1);
        Platform4 = ShareSDK.getPlatform((Context) AuthLoginActivity1, String2);
        Platform4.setPlatformActionListener((PlatformActionListener) new e(AuthLoginActivity1, Handler3));
        Platform4.authorize();
    }

    static String b(AuthLoginActivity AuthLoginActivity1, String String2) {
        AuthLoginActivity1.a = String2;
        return String2;
    }

    private void a(View View1) {
        View1.setOnTouchListener((View$OnTouchListener) new d(this));
    }

    public boolean handleMessage(Message Message1) {
        Platform Platform2 = (Platform) Message1.obj;

        switch (Message1.arg1) {
            default:
                return false;
            case 1:
                String String3 = Platform2.getDb().getUserId();
                String String4 = Platform2.getDb().getToken();

                if (String3 != null && String4 != null) {
                    f f5 = new f(this, (Activity) this, 2131034409);
                    String[] String_1darray6 = new String[3];

                    String_1darray6[0] = a;
                    String_1darray6[1] = String3;
                    String_1darray6[2] = String4;
                    f5.b(String_1darray6);
                } else {
                    Toast.makeText((Context) this, (CharSequence) "\u6388\u6743\u5F02\u5E38\uFF0C\u8BF7\u91CD\u65B0\u6388\u6743", 0).show();
                    finish();
                }
                return false;
            case 2:
                Toast.makeText((Context) this, (CharSequence) new StringBuilder().append(a).append("\u6388\u6743\u5931\u8D25").toString(), 0).show();
                finish();
                return false;
            case 3:
                Toast.makeText((Context) this, (CharSequence) new StringBuilder().append(a).append("\u6388\u6743\u88AB\u53D6\u6D88").toString(), 0).show();
                finish();
                return false;
        }
    }

    protected void onCreate(Bundle Bundle1) {
        Window Window2;
        WindowManager$LayoutParams LayoutParams3;

        super.onCreate(Bundle1);
        setContentView(2130903111);
        setTitle((CharSequence) "");
        ShareSDK.initSDK((Context) this);
        Window2 = getWindow();
        LayoutParams3 = Window2.getAttributes();
        LayoutParams3.dimAmount = 0.69999998807907104F;
        Window2.setAttributes(LayoutParams3);
        b = AnimationUtils.loadAnimation((Context) this, 2130968597);
        a(findViewById(2131493142));
        findViewById(2131493142).setOnClickListener((View$OnClickListener) new a(this));
        a(findViewById(2131493141));
        findViewById(2131493141).setOnClickListener((View$OnClickListener) new b(this));
        a(findViewById(2131493143));
        findViewById(2131493143).setOnClickListener((View$OnClickListener) new c(this));
        i.a().a(this);
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    public void onWeixinAuthEvent$60b4a58a(av av1) {
        if (av1.f()) {
            f f2 = new f(this, (Activity) this, 2131034409);
            String[] String_1darray3 = new String[3];

            String_1darray3[0] = av1.g();
            String_1darray3[1] = null;
            String_1darray3[2] = av1.e();
            f2.b(String_1darray3);
        } else {
            Toast.makeText((Context) this, (CharSequence) av1.e(), 0).show();
            finish();
        }
    }
}
