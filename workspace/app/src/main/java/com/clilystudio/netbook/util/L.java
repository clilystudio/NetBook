package com.clilystudio.netbook.util;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.Root;

final class L extends S<Root> {
    L(J paramJ) {
    }

    protected final Root a(ApiService paramApiService, String[] paramArrayOfString) {
        return paramApiService.L(paramArrayOfString[0]);
    }

    protected final void b(Root paramRoot) {
        this.a.a(0);
        i.a().c(new w());
        am.j(J.a(this.a));
    }
}

