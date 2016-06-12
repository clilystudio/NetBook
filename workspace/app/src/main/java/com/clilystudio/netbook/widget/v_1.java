
package com.clilystudio.netbook.widget;

import com.c.a.D;
import com.c.a.w;

final class v implements D {

    v(CoverLoadingLayer CoverLoadingLayer1)
    {
        a = CoverLoadingLayer1;
    }

    private CoverLoadingLayer a;

    public final void a(w w1)
    {
        CoverLoadingLayer.a( a, ((Integer) w1.f()).intValue() );
        a.invalidate();
    }
}
