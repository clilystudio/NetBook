package com.clilystudio.netbook.widget;

final class r implements D {

    private CoverLoadingLayer a;

    r(CoverLoadingLayer CoverLoadingLayer1) {
        a = CoverLoadingLayer1;
    }

    public final void a(w w1) {
        CoverLoadingLayer.a(a, ((Float) w1.f()).floatValue());
        a.invalidate();
    }
}
