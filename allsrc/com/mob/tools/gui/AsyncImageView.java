package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.mob.tools.b.j;
import com.mob.tools.e;
import com.mob.tools.log.d;
import java.util.Random;

public class AsyncImageView extends ImageView
  implements Handler.Callback, b
{
  private static final Random a = new Random();
  private float[] b;
  private boolean c;
  private String d;
  private int e;

  public AsyncImageView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public AsyncImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  public AsyncImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }

  private Bitmap a(Bitmap paramBitmap)
  {
    float f1 = paramBitmap.getWidth();
    float f2 = paramBitmap.getHeight();
    if ((f1 == 0.0F) || (f2 == 0.0F));
    while (true)
    {
      return paramBitmap;
      int[] arrayOfInt1 = a();
      if ((arrayOfInt1[0] == 0) || (arrayOfInt1[1] == 0))
        continue;
      float f3 = f1 * arrayOfInt1[1] / arrayOfInt1[0];
      if (f3 == f2)
        continue;
      int[] arrayOfInt2 = new int[4];
      if (f3 < f2)
      {
        arrayOfInt2[1] = (int)((f2 - f3) / 2.0F);
        arrayOfInt2[3] = arrayOfInt2[1];
      }
      try
      {
        while (true)
        {
          int i = arrayOfInt2[0];
          int j = arrayOfInt2[1];
          int k = arrayOfInt2[2];
          int m = arrayOfInt2[3];
          int n = paramBitmap.getWidth() - i - k;
          int i1 = paramBitmap.getHeight() - j - m;
          if ((n == paramBitmap.getWidth()) && (i1 == paramBitmap.getHeight()))
            break;
          Bitmap localBitmap = Bitmap.createBitmap(n, i1, Bitmap.Config.ARGB_8888);
          Canvas localCanvas = new Canvas(localBitmap);
          Paint localPaint = new Paint();
          localCanvas.drawBitmap(paramBitmap, -i, -j, localPaint);
          return localBitmap;
          arrayOfInt2[0] = (int)((f1 - f2 * arrayOfInt1[0] / arrayOfInt1[1]) / 2.0F);
          arrayOfInt2[2] = arrayOfInt2[0];
        }
      }
      catch (Throwable localThrowable)
      {
        e.a().w(localThrowable);
      }
    }
    return paramBitmap;
  }

  private void a(Context paramContext)
  {
    if (isInEditMode())
    {
      setBackgroundColor(-16777216);
      return;
    }
    a.a(paramContext);
  }

  private int[] a()
  {
    int i = getWidth();
    int j = getHeight();
    if ((i == 0) || (j == 0))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      if (localLayoutParams != null)
      {
        i = localLayoutParams.width;
        j = localLayoutParams.height;
      }
    }
    if ((i == 0) || (j == 0))
    {
      measure(0, 0);
      i = getMeasuredWidth();
      j = getMeasuredHeight();
    }
    return new int[] { i, j };
  }

  private Bitmap b(Bitmap paramBitmap)
  {
    try
    {
      int[] arrayOfInt = a();
      int i = arrayOfInt[0];
      int j = arrayOfInt[1];
      float f1 = this.b[0];
      float f2 = this.b[1];
      float f3 = this.b[2];
      float f4 = this.b[3];
      int k = paramBitmap.getWidth();
      int m = paramBitmap.getHeight();
      Rect localRect1 = new Rect(0, 0, k, m);
      if ((k != i) || (m != j));
      Bitmap localBitmap;
      for (Object localObject = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888); ; localObject = localBitmap)
      {
        Canvas localCanvas = new Canvas((Bitmap)localObject);
        Paint localPaint = new Paint();
        Rect localRect2 = new Rect(0, 0, i, j);
        localPaint.setAntiAlias(true);
        localCanvas.drawARGB(0, 0, 0, 0);
        localPaint.setColor(-12434878);
        float[] arrayOfFloat = { f1, f1, f2, f2, f3, f3, f4, f4 };
        ShapeDrawable localShapeDrawable = new ShapeDrawable(new RoundRectShape(arrayOfFloat, new RectF(0.0F, 0.0F, 0.0F, 0.0F), arrayOfFloat));
        localShapeDrawable.setBounds(localRect2);
        localShapeDrawable.draw(localCanvas);
        localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        localCanvas.drawBitmap(paramBitmap, localRect1, localRect2, localPaint);
        return localObject;
        localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      }
    }
    catch (Throwable localThrowable)
    {
      e.a().w(localThrowable);
    }
    return (Bitmap)paramBitmap;
  }

  public final void a(String paramString, int paramInt)
  {
    this.d = paramString;
    this.e = 0;
    if (TextUtils.isEmpty(paramString))
    {
      setImageResource(0);
      return;
    }
    Bitmap localBitmap = a.a(paramString);
    if ((localBitmap != null) && (!localBitmap.isRecycled()))
    {
      setBitmap(localBitmap);
      return;
    }
    a.a(paramString, this);
  }

  public final void a(String paramString, Bitmap paramBitmap)
  {
    Bitmap localBitmap = null;
    if (paramString != null)
    {
      int i = paramString.trim().length();
      localBitmap = null;
      if (i > 0)
      {
        boolean bool = paramString.equals(this.d);
        localBitmap = null;
        if (bool)
          localBitmap = paramBitmap;
      }
    }
    if (localBitmap != null)
    {
      if (this.c)
        localBitmap = a(localBitmap);
      if (this.b != null)
        localBitmap = b(localBitmap);
    }
    Message localMessage = new Message();
    localMessage.what = 1;
    localMessage.obj = new Object[] { paramString, localBitmap };
    j.a(localMessage, a.nextInt(300), this);
  }

  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      Object localObject1 = ((Object[])paramMessage.obj)[0];
      Object localObject2 = ((Object[])paramMessage.obj)[1];
      if ((localObject2 != null) && (localObject1 != null) && (localObject1.equals(this.d)))
        setImageBitmap((Bitmap)localObject2);
    }
    else
    {
      return false;
    }
    setImageResource(this.e);
    return false;
  }

  public void setBitmap(Bitmap paramBitmap)
  {
    if (this.c)
      paramBitmap = a(paramBitmap);
    if (this.b != null)
      paramBitmap = b(paramBitmap);
    setImageBitmap(paramBitmap);
  }

  public void setRound(float paramFloat)
  {
    setRound(paramFloat, paramFloat, paramFloat, paramFloat);
  }

  public void setRound(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.b = new float[] { paramFloat1, paramFloat2, paramFloat3, paramFloat4 };
  }

  public void setScaleToCropCenter(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.AsyncImageView
 * JD-Core Version:    0.6.0
 */