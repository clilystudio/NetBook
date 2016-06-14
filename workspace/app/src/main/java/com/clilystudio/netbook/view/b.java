package com.clilystudio.netbook.view;

import android.view.ViewTreeObserver;

final class b implements ViewTreeObserver.OnPreDrawListener {
    private /* synthetic */ CropView a;

    b(CropView cropView) {
        this.a = cropView;
    }

    @Override
    public final boolean onPreDraw() {
        float f2 = this.a.getWidth();
        float f3 = f2 / CropView.a(this.a);
        if (f3 >= (float) this.a.getHeight()) {
            f2 *= (float) this.a.getHeight() / f3;
            f3 = this.a.getHeight();
        }
        float f4 = Math.min(f2, f3);
        float f5 = CropView.b(this.a) / f4;
        CropView.c(this.a).d(f5);
        this.a.getViewTreeObserver().removeOnPreDrawListener(this);
        CropView.c(this.a).a(f5, false);
        return true;
    }
}
