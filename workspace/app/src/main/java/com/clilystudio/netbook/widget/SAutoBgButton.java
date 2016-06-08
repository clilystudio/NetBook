package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;

public class SAutoBgButton extends Button {
    public SAutoBgButton(Context paramContext) {
        super(paramContext);
    }

    public SAutoBgButton(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public SAutoBgButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
        super(paramContext, paramAttributeSet, paramInt);
    }

    public void setBackgroundDrawable(Drawable paramDrawable) {
        super.setBackgroundDrawable(new au(paramDrawable));
    }
}

