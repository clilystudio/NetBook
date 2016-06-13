package com.clilystudio.netbook;

import android.text.TextUtils;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.H;
import com.clilystudio.netbook.event.i;

final class f
        implements a {
    private /* synthetic */ MyApplication a;

    f(MyApplication myApplication) {
        this.a = myApplication;
    }

    @Override
    public final void a() {
        String string = b.b(this.a, "set_default_api");
        if (!TextUtils.isEmpty(string)) {
            ApiService.a(string);
        }
        ApiService.j(b.b(this.a, "reader_web_url"), 4);
        i.a().c(new H(com.clilystudio.netbook.hpay100.a.a.x(this.a)));
    }
}
