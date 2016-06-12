package com.clilystudio.netbook.reader;

import android.view.animation.Interpolator;

final class cp implements Interpolator {

    public final float getInterpolation(float float1) {
        float float2 = float1 - 1.0F;

        return 1.0F + float2 * (float2 * (float2 * (float2 * float2)));
    }
}
