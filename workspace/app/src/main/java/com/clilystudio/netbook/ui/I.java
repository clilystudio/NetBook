package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.view.ViewGroup;

final class I
        implements a {
    private /* synthetic */ AutoScaleImageView a;

    I(AutoScaleImageView autoScaleImageView) {
        this.a = autoScaleImageView;
    }

    @Override
    public final void a(Bitmap bitmap) {
        float f = (float) bitmap.getHeight() / (float) bitmap.getWidth() * (float) AutoScaleImageView.a(this.a);
        ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = (int) f;
            layoutParams.width = AutoScaleImageView.a(this.a);
            this.a.requestLayout();
        }
    }
}
