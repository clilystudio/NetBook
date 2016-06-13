package com.clilystudio.netbook.ui;

import android.content.Context;
import android.util.AttributeSet;

public class AutoScaleImageView
        extends SmartImageView {
    private final int b;

    public AutoScaleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = context.getResources().getDisplayMetrics().widthPixels;
    }

    static /* synthetic */ int a(AutoScaleImageView autoScaleImageView) {
        return autoScaleImageView.b;
    }

    @Override
    public void setImageUrl(String string) {
        this.setImageUrl(string, 0, new I(this));
    }

    @Override
    public final void setImageUrl(String string, int n) {
        super.setImageUrl(string, n);
    }

    @Override
    public final void setImageUrl(String string, int n, a a2) {
        super.setImageUrl(string, n, a2);
    }
}
