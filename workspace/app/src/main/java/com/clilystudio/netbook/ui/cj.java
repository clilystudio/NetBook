package com.clilystudio.netbook.ui;

import android.text.TextUtils;
import android.view.View;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class cj
        implements View.OnClickListener {
    cj(SplashActivity paramSplashActivity, SplashAdvert paramSplashAdvert, String paramString) {
    }

    public final void onClick(View paramView) {
        SplashActivity.a(this.c, true);
        this.c.a();
        String str = this.a.getSplashRecord().insideLink;
        if (!TextUtils.isEmpty(str)) ;
        while (true) {
            try {
                this.c.startActivity(new InsideLinkIntent(this.c, str));
                this.c.finish();
                a.o(this.c, this.b);
                return;
            } catch (UnImplementException localUnImplementException) {
            }
            SplashActivity.a(this.c, this.b);
        }
    }
}

