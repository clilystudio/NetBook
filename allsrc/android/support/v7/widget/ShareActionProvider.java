package android.support.v7.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources.Theme;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.string;
import android.support.v7.internal.widget.ActivityChooserView;
import android.support.v7.internal.widget.Y;
import android.support.v7.internal.widget.l;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public class ShareActionProvider extends ActionProvider
{
  private final aN a;
  private final Context b;

  public boolean hasSubMenu()
  {
    return true;
  }

  public View onCreateActionView()
  {
    ActivityChooserView localActivityChooserView = new ActivityChooserView(this.b);
    if (!localActivityChooserView.isInEditMode())
      localActivityChooserView.setActivityChooserModel(l.a(this.b, null));
    TypedValue localTypedValue = new TypedValue();
    this.b.getTheme().resolveAttribute(R.attr.actionModeShareDrawable, localTypedValue, true);
    localActivityChooserView.setExpandActivityOverflowButtonDrawable(Y.a(this.b, localTypedValue.resourceId));
    localActivityChooserView.setProvider(this);
    localActivityChooserView.setDefaultActionButtonContentDescription(R.string.abc_shareactionprovider_share_with_application);
    localActivityChooserView.setExpandActivityOverflowButtonContentDescription(R.string.abc_shareactionprovider_share_with);
    return localActivityChooserView;
  }

  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    paramSubMenu.clear();
    l locall = l.a(this.b, null);
    PackageManager localPackageManager = this.b.getPackageManager();
    int i = locall.a();
    int j = Math.min(i, 0);
    for (int k = 0; k < j; k++)
    {
      ResolveInfo localResolveInfo2 = locall.a(k);
      paramSubMenu.add(0, k, k, localResolveInfo2.loadLabel(localPackageManager)).setIcon(localResolveInfo2.loadIcon(localPackageManager)).setOnMenuItemClickListener(this.a);
    }
    if (j < i)
    {
      SubMenu localSubMenu = paramSubMenu.addSubMenu(0, j, j, this.b.getString(R.string.abc_activity_chooser_view_see_all));
      for (int m = 0; m < i; m++)
      {
        ResolveInfo localResolveInfo1 = locall.a(m);
        localSubMenu.add(0, m, m, localResolveInfo1.loadLabel(localPackageManager)).setIcon(localResolveInfo1.loadIcon(localPackageManager)).setOnMenuItemClickListener(this.a);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ShareActionProvider
 * JD-Core Version:    0.6.0
 */