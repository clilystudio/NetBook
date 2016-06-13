package com.clilystudio.netbook.widget;

final class ae
        implements D {
    private /* synthetic */ LoadingProgressView a;

    ae(LoadingProgressView loadingProgressView) {
        this.a = loadingProgressView;
    }

    @Override
    public final void a(w w2) {
        if (!LoadingProgressView.a(this.a)) {
            LoadingProgressView.a(this.a, ((Float) w2.f()).floatValue());
            this.a.setProgress(LoadingProgressView.b(this.a));
        }
    }
}
