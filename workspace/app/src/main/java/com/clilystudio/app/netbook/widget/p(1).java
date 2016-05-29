package com.clilystudio.app.netbook.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.shapes.Shape;

public final class p extends Shape {
    private RectF a;
    private float b;

    public p(float paramFloat) {
        this.b = paramFloat;
    }

    public final void draw(Canvas paramCanvas, Paint paramPaint) {
        float f = this.a.width();
        Path localPath = new Path();
        localPath.moveTo(0.0F, 0.0F);
        localPath.lineTo(f - this.b, 0.0F);
        localPath.addArc(new RectF(f - 2.0F * this.b, 0.0F, f, 2.0F * this.b), -90.0F, 90.0F);
        localPath.lineTo(f, f);
        localPath.lineTo(0.0F, 0.0F);
        localPath.close();
        paramCanvas.drawPath(localPath, paramPaint);
    }

    protected final void onResize(float paramFloat1, float paramFloat2) {
        super.onResize(paramFloat1, paramFloat2);
        this.a = new RectF(0.0F, 0.0F, paramFloat1, paramFloat2);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.p
 * JD-Core Version:    0.6.2
 */