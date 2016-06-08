package com.clilystudio.netbook.util;

import android.content.Context;

public final class UmengGameTracer {
    private Context a;
    private UmengGameTracer.From b;

    public UmengGameTracer(Context paramContext, UmengGameTracer.From paramFrom) {
        this.a = paramContext;
        this.b = paramFrom;
    }

    public final void a(String paramString) {
        b.a(this.a, this.b.build(), paramString);
    }
}

