package com.clilystudio.netbook.util;

import android.content.Context;

public final class V_Clazz {
    private Context a;
    private int[][] b = new int[][]{{7, 30}, {14, 60}, {30, 120}, {45, 180}};

    public V_Clazz(Context context) {
        this.a = context;
    }

    public final long a() {
        return a.c(this.a, "key_last_share_time", 0);
    }

    public final void a(long l) {
        a.b(this.a, "key_last_share_time", l);
    }
}
