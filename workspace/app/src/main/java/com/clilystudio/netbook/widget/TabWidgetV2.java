
package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.TabWidget;
import com.clilystudio.netbook.R$styleable;

public class TabWidgetV2 extends TabWidget {

    public TabWidgetV2(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        TypedArray TypedArray3;

        TypedArray3 = Context1.obtainStyledAttributes( AttributeSet2, R$styleable.TabWidgetV2 );
        e = TypedArray3.getDimensionPixelSize( 0, 0 );
        a = TypedArray3.getInteger( 1, 0 );
        if( a == 0 )
            throw new RuntimeException( "Item count can't be zero" );
        else
        {
            int int4;
            int int5;
            int int6;

            TypedArray3.recycle();
            int4 = am.b( (Activity) Context1 ).widthPixels;
            int5 = (int) (2.1000000000000001 * (double) int4);
            b = (float) int4 / (float) a;
            g = -(int5 - int4) / 2;
            h = (float) ((int4 - (e << 1)) / a) / b;
            int6 = getResources().getDimensionPixelSize( 2131099784 );
            if( com.clilystudio.netbook.hpay100.a.a.a( Context1, "customer_night_theme", false ) )
                d = am.a( 2130837642, int5, int6, getContext() );
            else
                d = am.a( 2130837694, int5, int6, getContext() );
            f = getResources().getDimensionPixelSize( 2131099786 );
            return;
        }
    }

    private int a;
    private float b;
    private float c;
    private Bitmap d;
    private int e;     // final access specifier removed
    private int f;     // final access specifier removed
    private int g;     // final access specifier removed
    private float h;

    public final void a(int int1, int int2)
    {
        c = (float) int2 / (float) a + (float) int1 * b;
        invalidate();
    }

    public void dispatchDraw(Canvas Canvas1)
    {
        int int2;
        float float3;
        float float4;

        if( e != 0 )
            int2 = 1;
        else
            int2 = 0;
        if( int2 != 0 )
            float3 = (float) g - b + (float) e - (float) f;
        else if( a == 3 )
            float3 = (float) g - b;
        else if( a == 4 )
            float3 = (float) (g - (int) (1.5 * (double) b));
        else
            float3 = (float) g - b / 2.0F;
        float4 = float3 + c * h;
        Canvas1.drawBitmap( d, float4, 0.0F, null );
        super.dispatchDraw( Canvas1 );
    }

    public void setIndex(int int1)
    {
        a( int1, 0 );
    }

    public void setItemCount(Context Context1, int int2)
    {
        int int3;

        a = int2;
        int3 = am.b( (Activity) Context1 ).widthPixels;
        b = (float) int3 / (float) a;
        h = (float) ((int3 - (e << 1)) / a) / b;
    }
}
