package com.clilystudio.netbook.widget;

final class t implements D {

    private CoverLoadingLayer a;

    t(CoverLoadingLayer CoverLoadingLayer1) {
        a = CoverLoadingLayer1;
    }

    public final void a(w w1) {
        CoverLoadingLayer.b(a, CoverLoadingLayer.d(a) * ((Float) w1.f()).floatValue());
        a.invalidate();
    }
}
