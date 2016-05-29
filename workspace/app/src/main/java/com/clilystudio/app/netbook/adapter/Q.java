package com.clilystudio.app.netbook.adapter;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

final class Q
        implements Runnable {
    Q(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    }

    public final void run() {
        Rect localRect = new Rect();
        this.a.setEnabled(true);
        this.a.getHitRect(localRect);
        localRect.top -= this.b;
        localRect.bottom += this.c;
        localRect.left -= this.d;
        localRect.right += this.e;
        TouchDelegate localTouchDelegate = new TouchDelegate(localRect, this.a);
        if (View.class.isInstance(this.a.getParent()))
            ((View) this.a.getParent()).setTouchDelegate(localTouchDelegate);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.Q
 * JD-Core Version:    0.6.2
 */