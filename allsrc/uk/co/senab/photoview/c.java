package uk.co.senab.photoview;

import android.graphics.RectF;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class c
  implements ViewTreeObserver.OnPreDrawListener
{
  c(PhotoView paramPhotoView)
  {
  }

  public final boolean onPreDraw()
  {
    this.a.getViewTreeObserver().removeOnPreDrawListener(this);
    PhotoView.a(this.a).c = PhotoView.a(this.a).b().left;
    PhotoView.a(this.a).d = PhotoView.a(this.a).b().top;
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.c
 * JD-Core Version:    0.6.0
 */