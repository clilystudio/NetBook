package com.clilystudio.netbook.util;

import android.content.Context;

public final class UmengGameTracer {

    private Context a;
    private UmengGameTracer$From b;
    public UmengGameTracer(Context Context1, UmengGameTracer$From From2) {
        a = Context1;
        b = From2;
    }

    public final void a(String String1) {
        com.umeng.a.b.a(a, b.build(), String1);
    }
}
