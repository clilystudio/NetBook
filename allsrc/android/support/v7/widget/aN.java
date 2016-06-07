package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.support.v7.internal.widget.l;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class aN
  implements MenuItem.OnMenuItemClickListener
{
  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = l.a(ShareActionProvider.a(this.a), ShareActionProvider.b(this.a)).b(paramMenuItem.getItemId());
    if (localIntent != null)
    {
      String str = localIntent.getAction();
      if (("android.intent.action.SEND".equals(str)) || ("android.intent.action.SEND_MULTIPLE".equals(str)))
        ShareActionProvider.a(this.a, localIntent);
      ShareActionProvider.a(this.a).startActivity(localIntent);
    }
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aN
 * JD-Core Version:    0.6.0
 */