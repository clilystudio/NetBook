package com.clilystudio.netbook.util.adutil;

import com.clilystudio.netbook.hpay100.a_Pack.a;
import com.clilystudio.netbook.widget.AdContainerLayout;
import com.clilystudio.netbook.widget.f;

final class b
        implements f {
    b(AdSplashImp paramAdSplashImp, AdContainerLayout paramAdContainerLayout) {
    }

    public final void a() {
        this.b.d();
        AdSplashImp.a(this.b).a();
        if (AdSplashImp.b(this.b)) {
            h localh1 = new h(AdSplashImp.a(this.b));
            if (a.s(AdSplashImp.a(this.b))) ;
            for (String str = AdSplashImp.a(this.b).getString(2131034279); ; str = AdSplashImp.a(this.b).getString(2131034278)) {
                h localh2 = localh1.a(false);
                localh2.e = str;
                localh2.d = "下载";
                localh2.b("取消", new e(this)).a("确定", new c(this)).b();
                return;
            }
        }
        AdSplashImp.a(this.b).d();
        AdSplashImp.c(this.b).a();
    }

    public final void b() {
        this.b.d();
        this.b.e();
    }
}

