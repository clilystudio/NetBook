package com.clilystudio.app.netbook.ui;

import android.graphics.Bitmap;

import com.nostra13.universalimageloader.core.d.a;

final class I
        implements a {
    I(AutoScaleImageView paramAutoScaleImageView) {
    }

    public final void a(Bitmap paramBitmap) {
        float f = paramBitmap.getHeight() / paramBitmap.getWidth() * AutoScaleImageView.a(this.a);
        ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
        if (localLayoutParams != null) {
            localLayoutParams.height = ((int) f);
            localLayoutParams.width = AutoScaleImageView.a(this.a);
            this.a.requestLayout();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.I
 * JD-Core Version:    0.6.2
 */