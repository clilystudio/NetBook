package com.clilystudio.netbook.widget;

final class ae implements D {

    private LoadingProgressView a;

    ae(LoadingProgressView LoadingProgressView1) {
        a = LoadingProgressView1;
    }

    public final void a(w w1) {
        if (!com.clilystudio.netbook.widget.LoadingProgressView.a(a)) {
            LoadingProgressView.a(a, ((Float) w1.f()).floatValue());
            a.setProgress(LoadingProgressView.b(a));
        }
    }
}
