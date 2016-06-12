
package com.clilystudio.netbook.widget;

import com.c.a.D;
import com.c.a.w;

final class r implements D {

    r(CoverLoadingLayer CoverLoadingLayer1)
    {
        a = CoverLoadingLayer1;
    }

    private CoverLoadingLayer a;

    public final void a(w w1)
    {
        CoverLoadingLayer.a( a, ((Float) w1.f()).floatValue() );
        a.invalidate();
    }
}
