package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.View;

final class ag
  implements Runnable
{
  private final View a;
  private final boolean b;

  ag(ad paramad, View paramView, boolean paramBoolean)
  {
    this.a = paramView;
    this.b = paramBoolean;
  }

  public final void run()
  {
    if ((ad.b(this.c) != null) && (ad.b(this.c).continueSettling(true)))
      ViewCompat.postOnAnimation(this.a, this);
    do
      return;
    while ((!this.b) || (ad.a(this.c) == null));
    ad.a(this.c).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.ag
 * JD-Core Version:    0.6.0
 */