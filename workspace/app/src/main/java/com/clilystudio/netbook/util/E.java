package com.clilystudio.netbook.util;

import android.content.Context;

public final class E {
    private float a;
    private float b;
    private float c;

    public E(Context context, float f, float f2) {
        context.getResources().getDimension(2131099903);
        this.c = context.getResources().getDimension(2131099904);
        this.a = f;
        this.b = f2;
    }

    public final F a() {
        float f = this.a - this.b;
        for (int i = (int) (f / (this.b + this.c)); i > 0; --i) {
            float f2 = f / (float) i - this.b;
            if (f2 < this.c) continue;
            return new F(i + 1, f2);
        }
        return new F(1, 0.0f);
    }
}
