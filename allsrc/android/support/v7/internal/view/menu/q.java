package android.support.v7.internal.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.ActionProvider;

@TargetApi(16)
final class q extends l
{
  q(Context paramContext, SupportMenuItem paramSupportMenuItem)
  {
    super(paramContext, paramSupportMenuItem);
  }

  final m a(ActionProvider paramActionProvider)
  {
    return new r(this, this.a, paramActionProvider);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.q
 * JD-Core Version:    0.6.0
 */