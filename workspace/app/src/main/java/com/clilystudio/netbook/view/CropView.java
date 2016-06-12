package com.clilystudio.netbook.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint$Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.ViewTreeObserver$OnPreDrawListener;
import android.widget.ImageView;

import uk.co.senab.photoview.PhotoView;

public class CropView extends PhotoView {

    private d a;
    private float b;
    private float c;
    public CropView(Context Context1, AttributeSet AttributeSet2, int int3) {
        super(Context1, AttributeSet2, int3);
        b();
    }

    public CropView(Context Context1) {
        super(Context1);
        b();
    }

    public CropView(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
        b();
    }

    static float a(CropView CropView1) {
        return CropView1.c;
    }

    static float b(CropView CropView1) {
        return CropView1.b;
    }

    static d c(CropView CropView1) {
        return CropView1.a;
    }

    private void b() {
        b = getResources().getDimension(2131099867);
        a = new d((ImageView) this);
    }

    private RectF c() {
        float float1 = (float) (getWidth() / 2) - b / 2.0F;
        float float2 = (float) (getHeight() / 2) - b / 2.0F;
        float float3 = b;
        float float4 = b;

        return new RectF(float1, float2, float3 + float1, float4 + float2);
    }

    public final Bitmap a() {
        Bitmap Bitmap1;
        RectF RectF2;
        Bitmap Bitmap4;

        invalidate();
        Bitmap1 = getDrawingCache();
        RectF2 = c();
        try {
            Bitmap4 = Bitmap.createBitmap(Bitmap1, (int) RectF2.left, (int) RectF2.top, (int) RectF2.width(), (int) RectF2.height());
        } catch (Exception Exception3) {
            Exception3.printStackTrace();
            return null;
        }
        return Bitmap4;
    }

    protected void onDraw(Canvas Canvas1) {
        RectF RectF2;
        Paint Paint3;
        Paint Paint4;
        RectF RectF5;
        RectF RectF6;
        RectF RectF7;
        RectF RectF8;

        super.onDraw(Canvas1);
        RectF2 = c();
        Paint3 = new Paint();
        Paint3.setColor(-1);
        Paint3.setStrokeWidth(2.0F);
        Paint3.setStyle(Paint$Style.STROKE);
        Canvas1.drawRect(RectF2, Paint3);
        Paint4 = new Paint();
        Paint4.setColor(getResources().getColor(2131427387));
        Paint4.setStyle(Paint$Style.FILL);
        RectF5 = new RectF();
        RectF5.left = 0.0F;
        RectF5.top = 0.0F;
        RectF5.right = RectF2.left - 2.0F;
        RectF5.bottom = (float) getHeight();
        Canvas1.drawRect(RectF5, Paint4);
        RectF6 = new RectF();
        RectF6.left = RectF2.left - 2.0F;
        RectF6.top = 0.0F;
        RectF6.right = 2.0F + RectF2.right;
        RectF6.bottom = RectF2.top;
        Canvas1.drawRect(RectF6, Paint4);
        RectF7 = new RectF();
        RectF7.left = 2.0F + RectF2.right;
        RectF7.top = 0.0F;
        RectF7.right = (float) getWidth();
        RectF7.bottom = (float) getHeight();
        Canvas1.drawRect(RectF7, Paint4);
        RectF8 = new RectF();
        RectF8.left = RectF2.left - 2.0F;
        RectF8.top = RectF2.bottom;
        RectF8.right = 2.0F + RectF2.right;
        RectF8.bottom = (float) getHeight();
        Canvas1.drawRect(RectF8, Paint4);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackgroundResource(17170444);
        setDrawingCacheEnabled(true);
        getViewTreeObserver().addOnPreDrawListener((ViewTreeObserver$OnPreDrawListener) new b(this));
    }

    public void setImageBitmap(Bitmap Bitmap1) {
        c = (float) Bitmap1.getWidth() / (float) Bitmap1.getHeight();
        super.setImageBitmap(Bitmap1);
    }
}
