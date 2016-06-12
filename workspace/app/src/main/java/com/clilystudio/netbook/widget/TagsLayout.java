
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;

public class TagsLayout extends ViewGroup {

    public TagsLayout(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
    }

    private int a;

    public TagsLayout(Context Context1)
    {
        super( Context1 );
    }

    protected boolean checkLayoutParams(ViewGroup$LayoutParams LayoutParams1)
    {
        return LayoutParams1 instanceof ViewGroup$LayoutParams;
    }

    protected ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return new ViewGroup$LayoutParams( 1, 1 );
    }

    protected void onLayout(boolean boolean1, int int2, int int3, int int4, int int5)
    {
        int int6 = getChildCount();
        int int7 = int4 - int2;
        int int8 = getPaddingLeft();
        int int9 = getPaddingTop();
        int int10 = int8;
        int int11;

        for( int11 = 0; int11 < int6; ++int11 )
        {
            View View12 = getChildAt( int11 );

            if( View12.getVisibility() != 8 )
            {
                int int13 = View12.getMeasuredWidth();
                int int14 = View12.getMeasuredHeight();
                ViewGroup$LayoutParams LayoutParams15 = View12.getLayoutParams();

                if( int10 + int13 > int7 )
                {
                    int10 = getPaddingLeft();
                    int9 += a;
                }
                View12.layout( int10, int9, int10 + int13, int14 + int9 );
                int10 += int13 + LayoutParams15.width;
            }
        }
    }

    protected void onMeasure(int int1, int int2)
    {
        int int3 = View$MeasureSpec.getSize( int1 );
        int int4 = View$MeasureSpec.getSize( int2 ) - getPaddingTop() - getPaddingBottom();
        int int5 = getChildCount();
        int int6 = getPaddingLeft();
        int int7 = getPaddingTop();
        int int8 = 0;
        int int9 = 0;
        int int10;

        while( int8 < int5 )
        {
            View View11 = getChildAt( int8 );

            if( View11.getVisibility() != 8 )
            {
                int int12;
                ViewGroup$LayoutParams LayoutParams13;

                View11.measure( View$MeasureSpec.makeMeasureSpec( int3, -2147483648 ), View$MeasureSpec.makeMeasureSpec( int4, 0 ) );
                int12 = View11.getMeasuredWidth();
                LayoutParams13 = View11.getLayoutParams();
                int9 = Math.max( int9, View11.getMeasuredHeight() + LayoutParams13.height );
                if( int6 + int12 > int3 )
                {
                    int6 = getPaddingLeft();
                    int7 += int9;
                }
                int6 += int12 + LayoutParams13.width;
            }
            ++int8;
        }
        a = int9;
        if( View$MeasureSpec.getMode( int2 ) == 0 )
            int10 = int7 + int9;
        else if( View$MeasureSpec.getMode( int2 ) == -2147483648 && int7 + int9 < int4 )
            int10 = int7 + int9;
        else
            int10 = int4;
        setMeasuredDimension( int3, int10 );
    }
}
