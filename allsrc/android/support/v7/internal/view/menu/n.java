package android.support.v7.internal.view.menu;

import android.support.v7.b.c;
import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

final class n extends FrameLayout
  implements c
{
  final CollapsibleActionView a;

  n(View paramView)
  {
    super(paramView.getContext());
    this.a = ((CollapsibleActionView)paramView);
    addView(paramView);
  }

  public final void a()
  {
    this.a.onActionViewExpanded();
  }

  public final void b()
  {
    this.a.onActionViewCollapsed();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.n
 * JD-Core Version:    0.6.0
 */