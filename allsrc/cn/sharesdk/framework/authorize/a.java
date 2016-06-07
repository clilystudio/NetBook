package cn.sharesdk.framework.authorize;

import android.content.Context;
import android.content.Intent;
import cn.sharesdk.framework.Platform;

public class a extends com.mob.tools.a
{
  protected AuthorizeHelper a;

  public AuthorizeHelper a()
  {
    return this.a;
  }

  public void a(AuthorizeHelper paramAuthorizeHelper)
  {
    this.a = paramAuthorizeHelper;
    super.show(paramAuthorizeHelper.getPlatform().getContext(), null);
  }

  public void show(Context paramContext, Intent paramIntent)
  {
    throw new RuntimeException("This method is deprecated, use show(AuthorizeHelper, Intent) instead");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.a
 * JD-Core Version:    0.6.0
 */