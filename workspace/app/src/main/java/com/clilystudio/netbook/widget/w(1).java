package com.clilystudio.netbook.widget;

final class w
        implements D {
    w(CoverLoadingLayer paramCoverLoadingLayer) {
    }

    public final void a(com.c.a.w paramw) {
        float f = ((Float) paramw.f()).floatValue();
        CoverLoadingLayer.b(this.a, f * CoverLoadingLayer.d(this.a));
        this.a.invalidate();
    }
}

