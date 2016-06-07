package android.support.v7.internal.widget;

import android.support.v4.view.ActionProvider;
import android.support.v7.widget.L;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class s
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  s(ActivityChooserView paramActivityChooserView)
  {
  }

  public final void onGlobalLayout()
  {
    if (this.a.c())
    {
      if (this.a.isShown())
        break label31;
      ActivityChooserView.b(this.a).a();
    }
    label31: 
    do
    {
      return;
      ActivityChooserView.b(this.a).c();
    }
    while (this.a.a == null);
    this.a.a.subUiVisibilityChanged(true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.s
 * JD-Core Version:    0.6.0
 */