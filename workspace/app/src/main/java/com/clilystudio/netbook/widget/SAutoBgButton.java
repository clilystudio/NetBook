package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;

public class SAutoBgButton extends Button {
    public SAutoBgButton(Context context) {
        super(context);
    }

    public SAutoBgButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SAutoBgButton(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
    }

    @Override
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(new au(drawable));
    }
}
