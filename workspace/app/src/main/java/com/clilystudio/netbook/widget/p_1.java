package com.clilystudio.netbook.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.shapes.Shape;

public final class p
        extends Shape {
    private RectF a;
    private float b;

    public p(float f) {
        this.b = f;
    }

    @Override
    public final void draw(Canvas canvas, Paint paint) {
        float f = this.a.width();
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(f - this.b, 0.0f);
        path.addArc(new RectF(f - 2.0f * this.b, 0.0f, f, 2.0f * this.b), -90.0f, 90.0f);
        path.lineTo(f, f);
        path.lineTo(0.0f, 0.0f);
        path.close();
        canvas.drawPath(path, paint);
    }

    @Override
    protected final void onResize(float f, float f2) {
        super.onResize(f, f2);
        this.a = new RectF(0.0f, 0.0f, f, f2);
    }
}
