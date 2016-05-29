package com.clilystudio.app.netbook.reader;

import android.view.animation.Interpolator;

final class N
        implements Interpolator {
    N(PagerWidget paramPagerWidget) {
    }

    public final float getInterpolation(float paramFloat) {
        float f = paramFloat - 1.0F;
        return 1.0F + f * (f * (f * (f * f)));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.N
 * JD-Core Version:    0.6.2
 */