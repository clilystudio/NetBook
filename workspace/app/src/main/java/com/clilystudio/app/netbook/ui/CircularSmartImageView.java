package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.Uri;
import android.util.AttributeSet;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.R.styleable;

public class CircularSmartImageView extends CornerImageView
{
  private final int b;

  public CircularSmartImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.b = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842996 }).getDimensionPixelSize(0, -1);
    paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CircularSmartImageView).recycle();
  }

  protected final void a(Canvas paramCanvas)
  {
    Paint localPaint = new Paint(this.a);
    localPaint.setAlpha(34);
    localPaint.setAntiAlias(true);
    paramCanvas.drawCircle(this.b / 2, this.b / 2, this.b / 2, localPaint);
  }

  public void setImageURI(Uri paramUri)
  {
    setImageBitmap(a.a(BitmapFactory.decodeFile(paramUri.getPath())));
  }

  public void setImageUrl(String paramString, int paramInt)
  {
    super.setImageUrl(paramString, 2130837614);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.CircularSmartImageView
 * JD-Core Version:    0.6.2
 */