package com.clilystudio.netbook.widget;

final class v
        implements D {
    private /* synthetic */ CoverLoadingLayer a;

    v(CoverLoadingLayer coverLoadingLayer) {
        this.a = coverLoadingLayer;
    }

    @Override
    public final void a(w w2) {
        CoverLoadingLayer.a(this.a, (Integer) w2.f());
        this.a.invalidate();
    }
}
