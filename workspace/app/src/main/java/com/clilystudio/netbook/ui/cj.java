package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class cj implements View$OnClickListener {

    private SplashAdvert a;
    private String b;
    private SplashActivity c;
    cj(SplashActivity SplashActivity1, SplashAdvert SplashAdvert2, String String3) {
        c = SplashActivity1;
        a = SplashAdvert2;
        b = String3;
    }

    public final void onClick(View View1) {
        Object Object3;

        SplashActivity.a(c, true);
        c.a();
        Object3 = a.getSplashRecord().insideLink;
        if (!android.text.TextUtils.isEmpty((CharSequence) Object3)) {
            try {
                c.startActivity((Intent) new InsideLinkIntent((Context) c, (String) Object3));
                c.finish();
            } catch (UnImplementException UnImplementException4) {
            }
        }
        SplashActivity.a(c, b);
        com.clilystudio.netbook.hpay100.a.a.o((Context) c, b);
    }
}
