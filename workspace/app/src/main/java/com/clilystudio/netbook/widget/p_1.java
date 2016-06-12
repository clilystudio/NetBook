
package com.clilystudio.netbook.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.shapes.Shape;

public final class p extends Shape {

    public p(float float1)
    {
        b = float1;
    }

    private RectF a;
    private float b;

    public final void draw(Canvas Canvas1, Paint Paint2)
    {
        float float3 = a.width();
        Path Path4 = new Path();

        Path4.moveTo( 0.0F, 0.0F );
        Path4.lineTo( float3 - b, 0.0F );
        Path4.addArc( new RectF( float3 - 2.0F * b, 0.0F, float3, 2.0F * b ), -90.0F, 90.0F );
        Path4.lineTo( float3, float3 );
        Path4.lineTo( 0.0F, 0.0F );
        Path4.close();
        Canvas1.drawPath( Path4, Paint2 );
    }

    protected final void onResize(float float1, float float2)
    {
        super.onResize( float1, float2 );
        a = new RectF( 0.0F, 0.0F, float1, float2 );
    }
}
