package uk.co.senab.photoview.a;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;

final class d
  implements ScaleGestureDetector.OnScaleGestureListener
{
  d(c paramc)
  {
  }

  public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    float f = paramScaleGestureDetector.getScaleFactor();
    if ((Float.isNaN(f)) || (Float.isInfinite(f)))
      return false;
    this.a.a.a(f, paramScaleGestureDetector.getFocusX(), paramScaleGestureDetector.getFocusY());
    return true;
  }

  public final boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
  {
    return true;
  }

  public final void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.a.d
 * JD-Core Version:    0.6.0
 */