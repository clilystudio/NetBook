package uk.co.senab.photoview.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;

@TargetApi(5)
public class b extends a
{
  private int d = -1;
  private int e = 0;

  public b(Context paramContext)
  {
    super(paramContext);
  }

  final float a(MotionEvent paramMotionEvent)
  {
    try
    {
      float f = paramMotionEvent.getX(this.e);
      return f;
    }
    catch (Exception localException)
    {
    }
    return paramMotionEvent.getX();
  }

  final float b(MotionEvent paramMotionEvent)
  {
    try
    {
      float f = paramMotionEvent.getY(this.e);
      return f;
    }
    catch (Exception localException)
    {
    }
    return paramMotionEvent.getY();
  }

  public boolean c(MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 2:
    case 4:
    case 5:
    default:
    case 0:
    case 1:
    case 3:
    case 6:
    }
    int i;
    do
    {
      while (true)
      {
        int k = this.d;
        int m = 0;
        if (k != -1)
          m = this.d;
        this.e = paramMotionEvent.findPointerIndex(m);
        return super.c(paramMotionEvent);
        this.d = paramMotionEvent.getPointerId(0);
        continue;
        this.d = -1;
      }
      i = com.arcsoft.hpay100.a.a.j(paramMotionEvent.getAction());
    }
    while (paramMotionEvent.getPointerId(i) != this.d);
    if (i == 0);
    for (int j = 1; ; j = 0)
    {
      this.d = paramMotionEvent.getPointerId(j);
      this.b = paramMotionEvent.getX(j);
      this.c = paramMotionEvent.getY(j);
      break;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.a.b
 * JD-Core Version:    0.6.0
 */