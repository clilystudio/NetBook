package uk.co.senab.photoview;

import android.graphics.RectF;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.MotionEvent;

public final class a
  implements GestureDetector.OnDoubleTapListener
{
  private d a;

  public a(d paramd)
  {
    this.a = paramd;
  }

  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    if (this.a == null)
      return false;
    try
    {
      float f1 = this.a.g();
      float f2 = paramMotionEvent.getX();
      float f3 = paramMotionEvent.getY();
      if (f1 < this.a.e())
      {
        this.a.a(this.a.e(), f2, f3, true);
        return true;
      }
      if ((f1 >= this.a.e()) && (f1 < this.a.f()))
      {
        this.a.a(this.a.f(), f2, f3, true);
        return true;
      }
      this.a.a(this.a.d(), f2, f3, true);
      return true;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    return true;
  }

  public final boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (this.a == null);
    do
    {
      return false;
      this.a.c();
      if (this.a.i() == null)
        continue;
      RectF localRectF = this.a.b();
      if ((localRectF == null) || (!localRectF.contains(paramMotionEvent.getX(), paramMotionEvent.getY())))
        continue;
      localRectF.width();
      localRectF.height();
      this.a.i();
      return true;
    }
    while (this.a.j() == null);
    this.a.j();
    paramMotionEvent.getX();
    paramMotionEvent.getY();
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.a
 * JD-Core Version:    0.6.0
 */