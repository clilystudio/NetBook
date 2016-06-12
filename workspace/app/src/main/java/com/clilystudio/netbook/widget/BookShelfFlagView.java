
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup$LayoutParams;
import android.widget.TextView;

public class BookShelfFlagView extends TextView {

    public BookShelfFlagView(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        setVisibility( 8 );
        setTextColor( -1 );
        setGravity( 17 );
        setTextSize( (float) getResources().getDimensionPixelSize( 2131099774 ) );
        b = getResources().getDrawable( 2130838154 );
    }

    private int a;
    private Drawable b;     // final access specifier removed

    private void a()
    {
        Resources Resources1 = getResources();
        int int2 = Resources1.getDimensionPixelSize( 2131099697 );
        int int3 = Resources1.getDimensionPixelSize( 2131099696 );
        ViewGroup$LayoutParams LayoutParams4 = getLayoutParams();

        LayoutParams4.width = int2;
        LayoutParams4.height = int3;
    }

    protected void onMeasure(int int1, int int2)
    {
        if( a != 3 )
            super.onMeasure( int1, int2 );
        else
            setMeasuredDimension( b.getIntrinsicWidth(), b.getIntrinsicHeight() );
    }

    public void setType(int int1)
    {
        a = int1;
        switch( a )
        {
            case 1:
                a();
                setBackgroundResource( 2130838153 );
                setText( (CharSequence) "\u63A8\u5E7F" );
                break;
            case 2:
                a();
                setBackgroundResource( 2130838142 );
                setText( (CharSequence) "\u516C\u544A" );
                break;
            case 3:
                ViewGroup$LayoutParams LayoutParams2 = getLayoutParams();

                LayoutParams2.width = -2;
                LayoutParams2.height = -2;
                setText( (CharSequence) "" );
                setBackgroundResource( 2130838154 );
                break;
            case 4:
                a();
                setBackgroundResource( 2130838152 );
                setText( (CharSequence) "\u5F85\u6740" );
                break;
            default:
                break;
        }
        if( a == 0 )
            setVisibility( 4 );
        else
            setVisibility( 0 );
    }
}
