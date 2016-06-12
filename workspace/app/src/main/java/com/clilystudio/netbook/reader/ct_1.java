
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;

public final class ct extends ViewGroup$LayoutParams {

    public ct(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        TypedArray TypedArray3;

        c = 0.0F;
        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, ReaderViewPager.c() );
        b = TypedArray3.getInteger( 0, 48 );
        TypedArray3.recycle();
    }

    public boolean a;
    public int b;
    float c;
    boolean d;
    int e;
    int f;

    public ct()
    {
        super( -1, -1 );
        c = 0.0F;
    }
}
