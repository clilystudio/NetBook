package com.clilystudio.netbook.adapter;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

final class Q
        implements Runnable {
    private /* synthetic */ View a;
    private /* synthetic */ int b;
    private /* synthetic */ int c;
    private /* synthetic */ int d;
    private /* synthetic */ int e;

    Q(View view, int n, int n2, int n3, int n4) {
        this.a = view;
        this.b = n;
        this.c = n2;
        this.d = n3;
        this.e = n4;
    }

    @Override
    public final void run() {
        Rect rect = new Rect();
        this.a.setEnabled(true);
        this.a.getHitRect(rect);
        rect.top -= this.b;
        rect.bottom += this.c;
        rect.left -= this.d;
        rect.right += this.e;
        TouchDelegate touchDelegate = new TouchDelegate(rect, this.a);
        if (View.class.isInstance(this.a.getParent())) {
            ((View) ((Object) this.a.getParent())).setTouchDelegate(touchDelegate);
        }
    }
}
