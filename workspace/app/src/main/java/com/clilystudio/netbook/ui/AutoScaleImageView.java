package com.clilystudio.netbook.ui;

import android.content.Context;
import android.util.AttributeSet;

public class AutoScaleImageView extends SmartImageView {
    private final int b;

    public AutoScaleImageView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        this.b = paramContext.getResources().getDisplayMetrics().widthPixels;
    }

    public void setImageUrl(String paramString) {
        setImageUrl(paramString, 0, new I(this));
    }

    public final void setImageUrl(String paramString, int paramInt) {
        super.setImageUrl(paramString, paramInt);
    }

    public final void setImageUrl(String paramString, int paramInt, a parama) {
        super.setImageUrl(paramString, paramInt, parama);
    }
}

