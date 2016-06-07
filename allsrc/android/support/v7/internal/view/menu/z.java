package android.support.v7.internal.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.internal.view.SupportSubMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

final class z extends y
  implements SubMenu
{
  z(Context paramContext, SupportSubMenu paramSupportSubMenu)
  {
    super(paramContext, paramSupportSubMenu);
  }

  public final void clearHeader()
  {
    ((SupportSubMenu)this.b).clearHeader();
  }

  public final MenuItem getItem()
  {
    return a(((SupportSubMenu)this.b).getItem());
  }

  public final SubMenu setHeaderIcon(int paramInt)
  {
    ((SupportSubMenu)this.b).setHeaderIcon(paramInt);
    return this;
  }

  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    ((SupportSubMenu)this.b).setHeaderIcon(paramDrawable);
    return this;
  }

  public final SubMenu setHeaderTitle(int paramInt)
  {
    ((SupportSubMenu)this.b).setHeaderTitle(paramInt);
    return this;
  }

  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    ((SupportSubMenu)this.b).setHeaderTitle(paramCharSequence);
    return this;
  }

  public final SubMenu setHeaderView(View paramView)
  {
    ((SupportSubMenu)this.b).setHeaderView(paramView);
    return this;
  }

  public final SubMenu setIcon(int paramInt)
  {
    ((SupportSubMenu)this.b).setIcon(paramInt);
    return this;
  }

  public final SubMenu setIcon(Drawable paramDrawable)
  {
    ((SupportSubMenu)this.b).setIcon(paramDrawable);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.z
 * JD-Core Version:    0.6.0
 */