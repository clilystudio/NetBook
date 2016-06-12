package com.clilystudio.netbook.widget;

final class w implements D {

    private CoverLoadingLayer a;

    w(CoverLoadingLayer CoverLoadingLayer1) {
        a = CoverLoadingLayer1;
    }

    public final void a(com.c.a.w w1) {
        float float2 = ((Float) w1.f()).floatValue();

        CoverLoadingLayer.b(a, float2 * CoverLoadingLayer.d(a));
        a.invalidate();
    }
}
