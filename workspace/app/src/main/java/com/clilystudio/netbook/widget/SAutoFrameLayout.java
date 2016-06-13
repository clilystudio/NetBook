package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class SAutoFrameLayout
        extends FrameLayout {
    public SAutoFrameLayout(Context context) {
        super(context);
    }

    public SAutoFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SAutoFrameLayout(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(new au(drawable));
    }
}
