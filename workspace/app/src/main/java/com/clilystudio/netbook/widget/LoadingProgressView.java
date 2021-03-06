package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

import com.clilystudio.netbook.widget.comca.a;
import com.clilystudio.netbook.widget.comca.b;
import com.clilystudio.netbook.widget.comca.d;
import com.clilystudio.netbook.widget.comca.w;

public class LoadingProgressView extends ProgressView {
    private boolean a = true;
    private float b;
    private d c;
    private com.clilystudio.netbook.widget.comca.w.D d;
    private com.clilystudio.netbook.widget.comca.w.D e;

    public LoadingProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new com.clilystudio.netbook.widget.comca.w.D() {
            @Override
            public void a(w paramw) {
                if (!LoadingProgressView.this.a) {
                    LoadingProgressView.this.b = (Float) paramw.f();
                    LoadingProgressView.this.setProgress(LoadingProgressView.this.b);
                }
            }
        };
        this.e = new com.clilystudio.netbook.widget.comca.w.D() {
            @Override
            public void a(w paramw) {
                float f = (Float) paramw.f();
                setProgress(f);
            }
        };
    }

    public final void a() {
        if (this.getVisibility() != View.VISIBLE) {
            this.setVisibility(View.VISIBLE);
        }
        this.a = false;
        if (this.c != null && this.c.d()) {
            this.c.c();
        }
        com.clilystudio.netbook.widget.comca.w w2 = w.a(0.0f, 60.0f);
        w2.a(5000);
        w w3 = w.a(60.0f, 80.0f);
        w3.a(5000);
        w w4 = w.a(80.0f, 90.0f);
        w4.a(5000);
        w2.a(this.d);
        w3.a(this.d);
        w4.a(this.d);
        this.c = new d();
        this.c.a(w2, w3, w4);
        this.c.a();
    }

    public final void a(final OnLoadingProgressListener ah2) {
        this.a = true;
        float[] arrf = new float[]{this.b, 100.0f};
        w w2 = w.a(arrf);
        w2.a(300);
        w2.a(this.e);
        w2.a(new b() {
            @Override
            public void a(a parama) {

            }

            @Override
            public void b(a parama) {
                setVisibility(View.GONE);
                ah2.onEnd();
            }

            @Override
            public void c(a parama) {

            }

            @Override
            public void d(a parama) {

            }
        });
        w2.a();
    }

    public final boolean b() {
        return this.a;
    }

    public interface OnLoadingProgressListener {
        void onEnd();
    }
}
