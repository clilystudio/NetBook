package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class SAutoFrameLayout extends FrameLayout {
    public SAutoFrameLayout(Context paramContext) {
        super(paramContext);
    }

    public SAutoFrameLayout(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public SAutoFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
        super(paramContext, paramAttributeSet, paramInt);
    }

    public void setBackgroundDrawable(Drawable paramDrawable) {
        super.setBackgroundDrawable(new au(paramDrawable));
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.SAutoFrameLayout
 * JD-Core Version:    0.6.2
 */