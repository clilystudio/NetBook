package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public final class g extends a {
    public g(AdSplashImp adSplashImp) {
        super(adSplashImp);
    }

    @Override
    public final boolean a(View view) {
        try {
            this.a.a();
            Class class_ = Class.forName("com.baidu.mobads.SplashAdListener");
            Object object = Proxy.newProxyInstance(class_.getClassLoader(), new Class[]{class_}, this);
            Class class_2 = Class.forName("com.baidu.mobads.SplashAd");
            Class class_3 = Class.forName("com.baidu.mobads.SplashAd$SplashType");
            ?[]arrobj = class_3.getEnumConstants();
            Class[] arrclass = new Class[]{Context.class, ViewGroup.class, class_, String.class, Boolean.TYPE, class_3};
            Object[] arrobject = new Object[]{view.getContext(), view, object, "2009524", true, arrobj[1]};
            class_2.getConstructor(arrclass).newInstance(arrobject);
            return true;
        } catch (Exception var2_9) {
            return false;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final Object invoke(Object var1_1, Method var2_2, Object[] var3_3) {
        var4_4 = var2_2.getName();
        var5_5 = -1;
        switch (var4_4.hashCode()) {
            case 1960433767: {
                if (var4_4.equals("onAdDismissed")) {
                    var5_5 = 0;
                    **break;
                }
                **GOTO lbl17
            }
            case 676776255: {
                if (var4_4.equals("onAdFailed")) {
                    var5_5 = 1;
                    **break;
                }
                **GOTO lbl17
            }
            case 273540089: {
                if (var4_4.equals("onAdPresent")) {
                    var5_5 = 2;
                }
            }
            lbl17:
            // 8 sources:
            default:
            {
                **GOTO lbl22
            }
            case 157935686:
        }
        if (var4_4.equals("onAdClick")) {
            var5_5 = 3;
        }
        lbl22:
        // 4 sources:
        switch (var5_5) {
            case 1: {
                this.a.c();
                **break;
            }
            case 2: {
                this.a.a(true);
                this.a.b();
            }
            lbl29:
            // 3 sources:
            default:
            {
                return null;
            }
            case 3:
        }
        this.a.d();
        return null;
    }
}
