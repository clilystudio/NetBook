package com.clilystudio.netbook.widget;

import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

final class au extends LayerDrawable {

    private ColorFilter a = new LightingColorFilter(-3355444, 1);
    private int b = 100;
    private int c = 255;
    public au(Drawable Drawable1) {
        super(new Drawable[]{Drawable1});
    }

    public final boolean isStateful() {
        return true;
    }

    protected final boolean onStateChange(int[] int_1darray1) {
        int int2 = 0;
        int int3 = int_1darray1.length;
        int int4 = 0;
        int int5 = 0;

        while (int4 < int3) {
            int int7 = int_1darray1[int4];

            if (int7 == 16842910)
                int5 = 1;
            else if (int7 == 16842919)
                int2 = 1;
            ++int4;
        }
        mutate();
        if (int5 != 0 && int2 != 0)
            setColorFilter(a);
        else if (int5 == 0) {
            setColorFilter(null);
            setAlpha(b);
        } else {
            setColorFilter(null);
            setAlpha(c);
        }
        invalidateSelf();
        return super.onStateChange(int_1darray1);
    }
}
