package android.support.v7.widget;

import android.view.View;

final class f extends P
{
  f(e parame, View paramView, ActionMenuPresenter paramActionMenuPresenter)
  {
    super(paramView);
  }

  public final L a()
  {
    if (ActionMenuPresenter.a(this.a.a) == null)
      return null;
    return ActionMenuPresenter.a(this.a.a).e();
  }

  public final boolean b()
  {
    this.a.a.f();
    return true;
  }

  public final boolean c()
  {
    if (ActionMenuPresenter.b(this.a.a) != null)
      return false;
    this.a.a.g();
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.f
 * JD-Core Version:    0.6.0
 */