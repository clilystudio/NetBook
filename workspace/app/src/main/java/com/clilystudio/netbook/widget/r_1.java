package com.clilystudio.netbook.widget;

final class r
        implements D {
    private /* synthetic */ CoverLoadingLayer a;

    r(CoverLoadingLayer coverLoadingLayer) {
        this.a = coverLoadingLayer;
    }

    @Override
    public final void a(w w2) {
        CoverLoadingLayer.a(this.a, ((Float) w2.f()).floatValue());
        this.a.invalidate();
    }
}
