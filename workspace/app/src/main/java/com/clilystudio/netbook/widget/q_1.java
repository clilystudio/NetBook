package com.clilystudio.netbook.widget;

import com.c.a.a;

final class q
        implements b {
    private /* synthetic */ CoverLoadingLayer a;

    q(CoverLoadingLayer coverLoadingLayer) {
        this.a = coverLoadingLayer;
    }

    @Override
    public final void a(a a2) {
    }

    @Override
    public final void b(a a2) {
        CoverLoadingLayer.a(this.a);
        if (this.a.a()) {
            CoverLoadingLayer.a(this.a, CoverLoadingLayer.b(this.a));
            CoverLoadingLayer.c(this.a).a();
        }
    }

    @Override
    public final void c(a a2) {
    }

    @Override
    public final void d(a a2) {
    }
}
