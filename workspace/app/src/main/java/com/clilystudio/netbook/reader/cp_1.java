package com.clilystudio.netbook.reader;

import android.view.animation.Interpolator;

final class cp implements Interpolator {
    cp() {
    }

    @Override
    public final float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return 1.0f + f2 * (f2 * (f2 * (f2 * f2)));
    }
}
