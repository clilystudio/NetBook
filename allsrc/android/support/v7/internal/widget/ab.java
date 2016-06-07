package android.support.v7.internal.widget;

import android.support.v7.internal.view.menu.ActionMenuItem;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window.Callback;

final class ab
  implements View.OnClickListener
{
  private ActionMenuItem a = new ActionMenuItem(aa.a(this.b).getContext(), 0, 16908332, 0, 0, aa.b(this.b));

  ab(aa paramaa)
  {
  }

  public final void onClick(View paramView)
  {
    if ((aa.c(this.b) != null) && (aa.d(this.b)))
      aa.c(this.b).onMenuItemSelected(0, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ab
 * JD-Core Version:    0.6.0
 */