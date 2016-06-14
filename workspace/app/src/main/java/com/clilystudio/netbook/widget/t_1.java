package com.clilystudio.netbook.widget;

final class t implements D {
    private /* synthetic */ CoverLoadingLayer a;

    t(CoverLoadingLayer coverLoadingLayer) {
        this.a = coverLoadingLayer;
    }

    @Override
    public final void a(w w2) {
        CoverLoadingLayer.b(this.a, CoverLoadingLayer.d(this.a) * ((Float) w2.f()).floatValue());
        this.a.invalidate();
    }
}
