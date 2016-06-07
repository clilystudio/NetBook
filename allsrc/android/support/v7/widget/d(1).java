package android.support.v7.widget;

import android.support.v7.internal.view.menu.MenuBuilder;
import android.view.View;

final class d
  implements Runnable
{
  private g a;

  public d(ActionMenuPresenter paramActionMenuPresenter, g paramg)
  {
    this.a = paramg;
  }

  public final void run()
  {
    ActionMenuPresenter.f(this.b).e();
    View localView = (View)ActionMenuPresenter.g(this.b);
    if ((localView != null) && (localView.getWindowToken() != null) && (this.a.f()))
      ActionMenuPresenter.a(this.b, this.a);
    ActionMenuPresenter.a(this.b, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.d
 * JD-Core Version:    0.6.0
 */