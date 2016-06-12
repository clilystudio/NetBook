
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView$ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import com.clilystudio.netbook.R$styleable;
import com.clilystudio.netbook.ui.CornerImageView;

public class CoverView extends RelativeLayout {

    public CoverView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.CoverView );
        b = TypedArray3.getResourceId( 0, 0 );
        TypedArray3.getResourceId( 1, 2130838144 );
        TypedArray3.recycle();
    }

    private CornerImageView a;
    private int b;     // final access specifier removed

    protected void onFinishInflate()
    {
        Object Object1;
        Object Object2;

        super.onFinishInflate();
        a = new CornerImageView( getContext() );
        a.setScaleType( ImageView$ScaleType.FIT_XY );
        Object1 = new FrameLayout( getContext() );
        Object2 = new FrameLayout$LayoutParams( -1, -1 );
        ((FrameLayout) Object1).setLayoutParams( (ViewGroup$LayoutParams) new RelativeLayout$LayoutParams( -1, -1 ) );
        a.setLayoutParams( (ViewGroup$LayoutParams) Object2 );
        if( b != 0 )
            a.setImageResource( b );
        addView( (View) a );
        addView( (View) Object1 );
    }

    public void setImageResource(int int1)
    {
        a.setImageResource( int1 );
    }

    public void setImageUrl(String String1)
    {
        a.setImageUrl( String1 );
    }

    public void setImageUrl(String String1, int int2)
    {
        a.setImageUrl( String1, int2 );
    }
}
