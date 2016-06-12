
package com.clilystudio.netbook.widget;

import com.c.a.D;

final class w implements D {

    w(CoverLoadingLayer CoverLoadingLayer1)
    {
        a = CoverLoadingLayer1;
    }

    private CoverLoadingLayer a;

    public final void a(com.c.a.w w1)
    {
        float float2 = ((Float) w1.f()).floatValue();

        CoverLoadingLayer.b( a, float2 * CoverLoadingLayer.d( a ) );
        a.invalidate();
    }
}
