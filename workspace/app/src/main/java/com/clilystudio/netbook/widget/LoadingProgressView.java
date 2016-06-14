package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;

import com.c.a.a;
import com.c.a.d;

public class LoadingProgressView extends ProgressView {
    private boolean a = true;
    private float b;
    private d c;
    private D d;
    private D e;

    public LoadingProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new ae(this);
        this.e = new ag(this);
    }

    static /* synthetic */ float a(LoadingProgressView loadingProgressView, float f) {
        loadingProgressView.b = f;
        return f;
    }

    static /* synthetic */ boolean a(LoadingProgressView loadingProgressView) {
        return loadingProgressView.a;
    }

    static /* synthetic */ float b(LoadingProgressView loadingProgressView) {
        return loadingProgressView.b;
    }

    public final void a() {
        if (this.getVisibility() != 0) {
            this.setVisibility(0);
        }
        this.a = false;
        if (this.c != null && this.c.d()) {
            this.c.c();
        }
        w w2 = w.a(0.0f, 60.0f);
        w2.a(5000);
        w w3 = w.a(60.0f, 80.0f);
        w3.a(5000);
        w w4 = w.a(80.0f, 90.0f);
        w4.a(5000);
        w2.a(this.d);
        w3.a(this.d);
        w4.a(this.d);
        this.c = new d();
        this.c.a(new a[]{w2, w3, w4});
        this.c.a();
    }

    public final void a(ah ah2) {
        this.a = true;
        float[] arrf = new float[]{this.b, 100.0f};
        w w2 = w.a(arrf);
        w2.a(300);
        w2.a(this.e);
        w2.a((b) new af(this, ah2));
        w2.a();
    }

    public final boolean b() {
        return this.a;
    }
}
