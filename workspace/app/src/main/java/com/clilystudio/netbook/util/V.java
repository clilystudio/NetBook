package com.clilystudio.netbook.util;

import android.content.Context;

public final class V {
    private Context a;
    private int[][] b = {{7, 30}, {14, 60}, {30, 120}, {45, 180}};

    public V(Context paramContext) {
        this.a = paramContext;
    }

    public final long a() {
        return a.c(this.a, "key_last_share_time", 0L);
    }

    public final void a(long paramLong) {
        a.b(this.a, "key_last_share_time", paramLong);
    }
}

