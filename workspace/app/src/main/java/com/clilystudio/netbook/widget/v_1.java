package com.clilystudio.netbook.widget;

final class v implements D {

    private CoverLoadingLayer a;

    v(CoverLoadingLayer CoverLoadingLayer1) {
        a = CoverLoadingLayer1;
    }

    public final void a(w w1) {
        CoverLoadingLayer.a(a, ((Integer) w1.f()).intValue());
        a.invalidate();
    }
}
