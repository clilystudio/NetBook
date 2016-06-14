package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;

import com.clilystudio.netbook.widget.AdContainerLayout;
import com.clilystudio.netbook.widget.f;

final class b implements f {
    final /* synthetic */ AdContainerLayout a;
    final /* synthetic */ AdSplashImp b;

    b(AdSplashImp adSplashImp, AdContainerLayout adContainerLayout) {
        this.b = adSplashImp;
        this.a = adContainerLayout;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a() {
        this.b.d();
        AdSplashImp.a(this.b).a();
        if (!AdSplashImp.b(this.b)) {
            AdSplashImp.a(this.b).d();
            AdSplashImp.c(this.b).a();
            return;
        }
        h h2 = new h(AdSplashImp.a(this.b));
        String string = a.s(AdSplashImp.a(this.b)) ? AdSplashImp.a(this.b).getString(2131034279) : AdSplashImp.a(this.b).getString(2131034278);
        h h3 = h2.a(false);
        h3.e = string;
        h3.d = "\u4e0b\u8f7d";
        h3.b("\u53d6\u6d88", (DialogInterface.OnClickListener) new e(this)).a("\u786e\u5b9a", (DialogInterface.OnClickListener) new c(this)).b();
    }

    @Override
    public final void b() {
        this.b.d();
        this.b.e();
    }
}
