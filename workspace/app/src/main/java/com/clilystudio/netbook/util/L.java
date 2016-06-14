package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.design.widget.am;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.Root;

final class L extends S<Root> {
    private /* synthetic */ J a;

    L(J j) {
        this.a = j;
    }

    @Override
    protected final Root a(ApiService apiService, String[] arrstring) {
        return apiService.L(arrstring[0]);
    }

    @Override
    protected final void b(Root root) {
        this.a.a(0);
        i.a().c(new w());
        am.j((Context) J.a(this.a));
    }
}
