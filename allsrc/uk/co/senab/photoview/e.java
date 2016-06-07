package uk.co.senab.photoview;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View.OnLongClickListener;

final class e extends GestureDetector.SimpleOnGestureListener
{
  e(d paramd)
  {
  }

  public final void onLongPress(MotionEvent paramMotionEvent)
  {
    if (d.a(this.a) != null)
      d.a(this.a).onLongClick(this.a.c());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.e
 * JD-Core Version:    0.6.0
 */