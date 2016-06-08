package com.clilystudio.netbook.widget;

final class ae
        implements D {
    ae(LoadingProgressView paramLoadingProgressView) {
    }

    public final void a(w paramw) {
        if (!LoadingProgressView.a(this.a)) {
            LoadingProgressView.a(this.a, ((Float) paramw.f()).floatValue());
            this.a.setProgress(LoadingProgressView.b(this.a));
        }
    }
}

