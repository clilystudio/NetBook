package uk.co.senab.photoview.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

@TargetApi(8)
public final class c extends b
{
  private ScaleGestureDetector d = new ScaleGestureDetector(paramContext, new d(this));

  public c(Context paramContext)
  {
    super(paramContext);
  }

  public final boolean a()
  {
    return this.d.isInProgress();
  }

  public final boolean c(MotionEvent paramMotionEvent)
  {
    this.d.onTouchEvent(paramMotionEvent);
    return super.c(paramMotionEvent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.a.c
 * JD-Core Version:    0.6.0
 */