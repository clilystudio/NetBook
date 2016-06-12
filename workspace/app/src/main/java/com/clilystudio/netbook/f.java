package com.clilystudio.netbook;

import android.content.Context;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.H;
import com.clilystudio.netbook.event.i;

final class f implements com.umeng.a.a.a {

    private MyApplication a;

    f(MyApplication MyApplication1) {
        a = MyApplication1;
    }

    public final void a() {
        Object Object1 = com.umeng.a.b.b((Context) a, "set_default_api");

        if (!android.text.TextUtils.isEmpty((CharSequence) Object1))
            ApiService.a((String) Object1);
        ApiService.j(com.umeng.a.b.b((Context) a, "reader_web_url"), 4);
        i.a().c(new H(com.clilystudio.netbook.hpay100.a.a.x((Context) a)));
    }
}
