package com.clilystudio.netbook.widget;

import com.clilystudio.netbook.widget.comca.D;

final class ae implements D {
    private /* synthetic */ LoadingProgressView a;

    ae(LoadingProgressView loadingProgressView) {
        this.a = loadingProgressView;
    }

    @Override
    public void a(com.clilystudio.netbook.widget.comca.w paramw) {
        if (!LoadingProgressView.a(this.a)) {
            LoadingProgressView.a(this.a, ((Float) paramw.f()).floatValue());
            this.a.setProgress(LoadingProgressView.b(this.a));
        }
    }
}
