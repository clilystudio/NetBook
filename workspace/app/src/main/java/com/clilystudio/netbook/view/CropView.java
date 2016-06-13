package com.clilystudio.netbook.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;

import uk.co.senab.photoview.PhotoView;

public class CropView
        extends PhotoView {
    private d a;
    private float b;
    private float c;

    public CropView(Context context) {
        super(context);
        this.b();
    }

    public CropView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b();
    }

    public CropView(Context context, AttributeSet attributeSet, int n) {
        super(context, attributeSet, n);
        this.b();
    }

    static /* synthetic */ float a(CropView cropView) {
        return cropView.c;
    }

    static /* synthetic */ float b(CropView cropView) {
        return cropView.b;
    }

    static /* synthetic */ d c(CropView cropView) {
        return cropView.a;
    }

    private void b() {
        this.b = this.getResources().getDimension(2131099867);
        this.a = new d(this);
    }

    private RectF c() {
        float f2 = (float) (this.getWidth() / 2) - this.b / 2.0f;
        float f3 = (float) (this.getHeight() / 2) - this.b / 2.0f;
        float f4 = this.b;
        float f5 = this.b;
        return new RectF(f2, f3, f4 + f2, f5 + f3);
    }

    public final Bitmap a() {
        this.invalidate();
        Bitmap bitmap = this.getDrawingCache();
        RectF rectF = this.c();
        try {
            Bitmap bitmap2 = Bitmap.createBitmap(bitmap, (int) rectF.left, (int) rectF.top, (int) rectF.width(), (int) rectF.height());
            return bitmap2;
        } catch (Exception var3_4) {
            var3_4.printStackTrace();
            return null;
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.c();
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStrokeWidth(2.0f);
        paint.setStyle(Paint.Style.STROKE);
        canvas.drawRect(rectF, paint);
        Paint paint2 = new Paint();
        paint2.setColor(this.getResources().getColor(2131427387));
        paint2.setStyle(Paint.Style.FILL);
        RectF rectF2 = new RectF();
        rectF2.left = 0.0f;
        rectF2.top = 0.0f;
        rectF2.right = rectF.left - 2.0f;
        rectF2.bottom = this.getHeight();
        canvas.drawRect(rectF2, paint2);
        RectF rectF3 = new RectF();
        rectF3.left = rectF.left - 2.0f;
        rectF3.top = 0.0f;
        rectF3.right = 2.0f + rectF.right;
        rectF3.bottom = rectF.top;
        canvas.drawRect(rectF3, paint2);
        RectF rectF4 = new RectF();
        rectF4.left = 2.0f + rectF.right;
        rectF4.top = 0.0f;
        rectF4.right = this.getWidth();
        rectF4.bottom = this.getHeight();
        canvas.drawRect(rectF4, paint2);
        RectF rectF5 = new RectF();
        rectF5.left = rectF.left - 2.0f;
        rectF5.top = rectF.bottom;
        rectF5.right = 2.0f + rectF.right;
        rectF5.bottom = this.getHeight();
        canvas.drawRect(rectF5, paint2);
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setBackgroundResource(17170444);
        this.setDrawingCacheEnabled(true);
        this.getViewTreeObserver().addOnPreDrawListener(new b(this));
    }

    @Override
    public void setImageBitmap(Bitmap bitmap) {
        this.c = (float) bitmap.getWidth() / (float) bitmap.getHeight();
        super.setImageBitmap(bitmap);
    }
}
