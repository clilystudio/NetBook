package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

final class r extends m
  implements android.view.ActionProvider.VisibilityListener
{
  private android.support.v4.view.ActionProvider.VisibilityListener b;

  public r(q paramq, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramq, paramContext, paramActionProvider);
  }

  public final boolean isVisible()
  {
    return this.a.isVisible();
  }

  public final void onActionProviderVisibilityChanged(boolean paramBoolean)
  {
    if (this.b != null)
      this.b.onActionProviderVisibilityChanged(paramBoolean);
  }

  public final View onCreateActionView(MenuItem paramMenuItem)
  {
    return this.a.onCreateActionView(paramMenuItem);
  }

  public final boolean overridesItemVisibility()
  {
    return this.a.overridesItemVisibility();
  }

  public final void refreshVisibility()
  {
    this.a.refreshVisibility();
  }

  public final void setVisibilityListener(android.support.v4.view.ActionProvider.VisibilityListener paramVisibilityListener)
  {
    this.b = paramVisibilityListener;
    ActionProvider localActionProvider = this.a;
    if (paramVisibilityListener != null);
    while (true)
    {
      localActionProvider.setVisibilityListener(this);
      return;
      this = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.r
 * JD-Core Version:    0.6.0
 */