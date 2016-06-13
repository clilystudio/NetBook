package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

public final class ct
        extends ViewGroup.LayoutParams {
    public boolean a;
    public int b;
    float c = 0.0f;
    boolean d;
    int e;
    int f;

    public ct() {
        super(-1, -1);
    }

    public ct(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArray = context.obtainStyledAttributes(attributeSet, ReaderViewPager.c());
        this.b = typedArray.getInteger(0, 48);
        typedArray.recycle();
    }
}
