package com.clilystudio.app.netbook.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import uk.co.senab.photoview.PhotoView;
import uk.co.senab.photoview.d;

public class CropView extends PhotoView
{
  private d a;
  private float b;
  private float c;

  public CropView(Context paramContext)
  {
    super(paramContext);
    b();
  }

  public CropView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }

  public CropView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }

  private void b()
  {
    this.b = getResources().getDimension(2131099867);
    this.a = new d(this);
  }

  private RectF c()
  {
    float f1 = getWidth() / 2 - this.b / 2.0F;
    float f2 = getHeight() / 2 - this.b / 2.0F;
    float f3 = this.b;
    float f4 = this.b;
    return new RectF(f1, f2, f3 + f1, f4 + f2);
  }

  public final Bitmap a()
  {
    invalidate();
    Bitmap localBitmap1 = getDrawingCache();
    RectF localRectF = c();
    try
    {
      Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, (int)localRectF.left, (int)localRectF.top, (int)localRectF.width(), (int)localRectF.height());
      return localBitmap2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    RectF localRectF1 = c();
    Paint localPaint1 = new Paint();
    localPaint1.setColor(-1);
    localPaint1.setStrokeWidth(2.0F);
    localPaint1.setStyle(Paint.Style.STROKE);
    paramCanvas.drawRect(localRectF1, localPaint1);
    Paint localPaint2 = new Paint();
    localPaint2.setColor(getResources().getColor(2131427387));
    localPaint2.setStyle(Paint.Style.FILL);
    RectF localRectF2 = new RectF();
    localRectF2.left = 0.0F;
    localRectF2.top = 0.0F;
    localRectF2.right = (localRectF1.left - 2.0F);
    localRectF2.bottom = getHeight();
    paramCanvas.drawRect(localRectF2, localPaint2);
    RectF localRectF3 = new RectF();
    localRectF1.left -= 2.0F;
    localRectF3.top = 0.0F;
    localRectF3.right = (2.0F + localRectF1.right);
    localRectF3.bottom = localRectF1.top;
    paramCanvas.drawRect(localRectF3, localPaint2);
    RectF localRectF4 = new RectF();
    localRectF4.left = (2.0F + localRectF1.right);
    localRectF4.top = 0.0F;
    localRectF4.right = getWidth();
    localRectF4.bottom = getHeight();
    paramCanvas.drawRect(localRectF4, localPaint2);
    RectF localRectF5 = new RectF();
    localRectF1.left -= 2.0F;
    localRectF5.top = localRectF1.bottom;
    localRectF5.right = (2.0F + localRectF1.right);
    localRectF5.bottom = getHeight();
    paramCanvas.drawRect(localRectF5, localPaint2);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setBackgroundResource(17170444);
    setDrawingCacheEnabled(true);
    getViewTreeObserver().addOnPreDrawListener(new b(this));
  }

  public void setImageBitmap(Bitmap paramBitmap)
  {
    this.c = (paramBitmap.getWidth() / paramBitmap.getHeight());
    super.setImageBitmap(paramBitmap);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.view.CropView
 * JD-Core Version:    0.6.2
 */