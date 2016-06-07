package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewParent;

final class aO
{
  private final View a;
  private int b;
  private int c;
  private int d;
  private int e;

  public aO(View paramView)
  {
    this.a = paramView;
  }

  private void c()
  {
    ViewCompat.offsetTopAndBottom(this.a, this.d - (this.a.getTop() - this.b));
    ViewCompat.offsetLeftAndRight(this.a, this.e - (this.a.getLeft() - this.c));
    ViewParent localViewParent = this.a.getParent();
    if ((localViewParent instanceof View))
      ((View)localViewParent).invalidate();
  }

  public final void a()
  {
    this.b = this.a.getTop();
    this.c = this.a.getLeft();
    c();
  }

  public final boolean a(int paramInt)
  {
    if (this.d != paramInt)
    {
      this.d = paramInt;
      c();
      return true;
    }
    return false;
  }

  public final int b()
  {
    return this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aO
 * JD-Core Version:    0.6.0
 */