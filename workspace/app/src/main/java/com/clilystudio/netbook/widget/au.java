package com.clilystudio.netbook.widget;

import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

final class au extends LayerDrawable {
    private ColorFilter a = new LightingColorFilter(-3355444, 1);
    private int b = 100;
    private int c = 255;

    public au(Drawable drawable) {
        super(new Drawable[]{drawable});
    }

    @Override
    public final boolean isStateful() {
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final boolean onStateChange(int[] arrn) {
        boolean bl = false;
        int n = arrn.length;
        boolean bl2 = false;
        for (int i = 0; i < n; ++i) {
            int n2 = arrn[i];
            if (n2 == 16842910) {
                bl2 = true;
                continue;
            }
            if (n2 != 16842919) continue;
            bl = true;
        }
        this.mutate();
        if (bl2 && bl) {
            this.setColorFilter(this.a);
        } else if (!bl2) {
            this.setColorFilter(null);
            this.setAlpha(this.b);
        } else {
            this.setColorFilter(null);
            this.setAlpha(this.c);
        }
        this.invalidateSelf();
        return super.onStateChange(arrn);
    }
}
