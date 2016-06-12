package com.clilystudio.netbook.util;

import android.content.Context;

public final class V {

    private Context a;
    private int[][] b = {
            {7, 30},
            {14, 60},
            {30, 120},
            {45, 180}
    };
    public V(Context Context1) {
        a = Context1;
    }

    public final long a() {
        return com.clilystudio.netbook.hpay100.a.a.c(a, "key_last_share_time", 0L);
    }

    public final void a(long long1) {
        com.clilystudio.netbook.hpay100.a.a.b(a, "key_last_share_time", long1);
    }
}
