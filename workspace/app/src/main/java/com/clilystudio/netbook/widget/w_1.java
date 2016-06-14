package com.clilystudio.netbook.widget;

final class w implements D {
    private /* synthetic */ CoverLoadingLayer a;

    w(CoverLoadingLayer coverLoadingLayer) {
        this.a = coverLoadingLayer;
    }

    @Override
    public final void a(com.c.a.w w2) {
        float f = ((Float) w2.f()).floatValue();
        CoverLoadingLayer.b(this.a, f * CoverLoadingLayer.d(this.a));
        this.a.invalidate();
    }
}
