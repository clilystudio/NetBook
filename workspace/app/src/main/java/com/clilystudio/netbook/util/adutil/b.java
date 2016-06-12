package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.widget.AdContainerLayout;
import com.clilystudio.netbook.widget.f;

final class b implements f {

    AdContainerLayout a;     // final access specifier removed
    AdSplashImp b;     // final access specifier removed
    b(AdSplashImp AdSplashImp1, AdContainerLayout AdContainerLayout2) {
        b = AdSplashImp1;
        a = AdContainerLayout2;
    }

    public final void a() {
        b.d();
        AdSplashImp.a(b).a();
        if (AdSplashImp.b(b)) {
            h h1 = new h((Context) AdSplashImp.a(b));
            String String2;
            h h3;

            if (com.clilystudio.netbook.hpay100.a.a.s((Context) AdSplashImp.a(b)))
                String2 = AdSplashImp.a(b).getString(2131034279);
            else
                String2 = AdSplashImp.a(b).getString(2131034278);
            h3 = h1.a(false);
            h3.e = String2;
            h3.d = "\u4E0B\u8F7D";
            h3.b("\u53D6\u6D88", (DialogInterface$OnClickListener) new e(this)).a("\u786E\u5B9A", (DialogInterface$OnClickListener) new c(this)).b();
        } else {
            AdSplashImp.a(b).d();
            AdSplashImp.c(b).a();
        }
    }

    public final void b() {
        b.d();
        b.e();
    }
}
