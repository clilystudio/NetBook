package com.clilystudio.netbook.util;

import android.content.Context;

public final class UmengGameTracer {
    private Context a;
    private UmengGameTracer$From b;

    public UmengGameTracer(Context context, UmengGameTracer$From from) {
        this.a = context;
        this.b = from;
    }

    public final void a(String string) {
        b.a(this.a, this.b.build(), string);
    }
}
