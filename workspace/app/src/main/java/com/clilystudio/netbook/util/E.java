package com.clilystudio.netbook.util;

import android.content.Context;

public final class E {
    private float a;
    private float b;
    private float c;

    public E(Context context, float f, float f2) {
        context.getResources().getDimension(R.dimen.relate_book_max_gap);
        this.c = context.getResources().getDimension(R.dimen.relate_book_min_gap);
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
