
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import com.clilystudio.netbook.R$styleable;

public class RatingView extends LinearLayout {

    public RatingView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.RatingView );
        a = TypedArray3.getString( 0 );
        b = TypedArray3.getDimension( 1, 0.0F );
        c = TypedArray3.getInteger( 2, 0 );
        TypedArray3.recycle();
        LayoutInflater.from( Context1 ).inflate( 2130903358, (ViewGroup) this );
    }

    private String a;     // final access specifier removed
    private float b;     // final access specifier removed
    private int c;     // final access specifier removed
    private int d;
    private int e;
    private ImageView[] f = new ImageView[5];

    protected void onFinishInflate()
    {
        Object Object1;
        int[] int_1darray2;
        int int3;

        super.onFinishInflate();
        if( "list".equals( a ) )
        {
            d = 2130838069;
            e = 2130838066;
        }
        else if( "review".equals( a ) )
        {
            d = 2130838068;
            e = 2130838067;
        }
        Object1 = new LinearLayout$LayoutParams( -2, -2 );
        ((LinearLayout$LayoutParams) Object1).setMargins( 0, 0, (int) b, 0 );
        int_1darray2 = new int[] { 2131493854, 2131493855, 2131493856, 2131493857, 2131493858 };
        for( int3 = 0; int3 < 5; ++int3 )
        {
            f[int3] = (ImageView) findViewById( int_1darray2[int3] );
            f[int3].setLayoutParams( (ViewGroup$LayoutParams) Object1 );
        }
        if( c > 0 )
            setValue( c );
    }

    public void setValue(int int1)
    {
        int int2;

        for( int2 = 0; int2 < 5; ++int2 )
        {
            if( int2 < int1 )
                f[int2].setImageResource( d );
            else
                f[int2].setImageResource( e );
        }
    }
}
