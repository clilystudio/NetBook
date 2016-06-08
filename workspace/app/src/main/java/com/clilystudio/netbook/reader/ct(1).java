package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

public final class ct extends ViewGroup.LayoutParams {
    public boolean a;
    public int b;
    float c = 0.0F;
    boolean d;
    int e;
    int f;

    public ct() {
        super(-1, -1);
    }

    public ct(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ReaderViewPager.c());
        this.b = localTypedArray.getInteger(0, 48);
        localTypedArray.recycle();
    }
}

