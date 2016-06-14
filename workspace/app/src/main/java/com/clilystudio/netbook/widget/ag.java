package com.clilystudio.netbook.widget;

final class ag implements D {
    private /* synthetic */ LoadingProgressView a;

    ag(LoadingProgressView loadingProgressView) {
        this.a = loadingProgressView;
    }

    @Override
    public final void a(w w2) {
        float f = ((Float) w2.f()).floatValue();
        this.a.setProgress(f);
    }
}
