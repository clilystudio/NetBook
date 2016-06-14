package com.clilystudio.netbook.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;

import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class cj implements View.OnClickListener {
    private /* synthetic */ SplashAdvert a;
    private /* synthetic */ String b;
    private /* synthetic */ SplashActivity c;

    cj(SplashActivity splashActivity, SplashAdvert splashAdvert, String string) {
        this.c = splashActivity;
        this.a = splashAdvert;
        this.b = string;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void onClick(View view) {
        block3:
        {
            SplashActivity.a(this.c, true);
            this.c.a();
            String string = this.a.getSplashRecord().insideLink;
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.c.startActivity(new InsideLinkIntent((Context) this.c, string));
                    this.c.finish();
                    break block3;
                } catch (UnImplementException var4_3) {
                    // empty catch block
                }
            }
            SplashActivity.a(this.c, this.b);
        }
        a.o(this.c, this.b);
    }
}
