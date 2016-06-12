
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.RelativeLayout$LayoutParams;
import com.clilystudio.netbook.R$styleable;

public class CoverLoadingView extends CoverView {

    public CoverLoadingView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.CoverLoadingView );
        a = TypedArray3.getDimension( 0, 0.0F );
        TypedArray3.recycle();
    }

    private float a;     // final access specifier removed
    private CoverLoadingLayer b;

    protected void onFinishInflate()
    {
        Object Object1;

        super.onFinishInflate();
        b = new CoverLoadingLayer( getContext() );
        b.setCornerRadius( a );
        Object1 = new RelativeLayout$LayoutParams( -1, -1 );
        b.setLayoutParams( (ViewGroup$LayoutParams) Object1 );
        b.setId( 2131492906 );
        addView( (View) b );
    }
}
