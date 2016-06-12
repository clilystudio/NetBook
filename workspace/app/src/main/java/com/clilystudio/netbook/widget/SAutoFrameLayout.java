package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class SAutoFrameLayout extends FrameLayout {

    public SAutoFrameLayout(Context Context1, AttributeSet AttributeSet2, int int3) {
        super(Context1, AttributeSet2, int3);
    }

    public SAutoFrameLayout(Context Context1) {
        super(Context1);
    }

    public SAutoFrameLayout(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public void setBackgroundDrawable(Drawable Drawable1) {
        super.setBackgroundDrawable((Drawable) new au(Drawable1));
    }
}
