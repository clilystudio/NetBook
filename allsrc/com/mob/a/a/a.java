package com.mob.a.a;

import android.content.Context;
import android.content.Intent;
import com.mob.tools.e;

public abstract class a
  implements com.mob.tools.log.a
{
  private d a;

  public a(Context paramContext)
  {
    this.a = d.a(paramContext);
    this.a.a(getSDKVersion(), getSDKTag(), getAppkey());
  }

  final int a(int paramInt, String paramString)
  {
    if (this.a.a() != null);
    try
    {
      Intent localIntent = new Intent();
      localIntent.setAction("cn.sharesdk.log");
      localIntent.putExtra("package", this.a.a().getPackageName());
      localIntent.putExtra("priority", paramInt);
      localIntent.putExtra("msg", paramString);
      this.a.a().sendBroadcast(localIntent);
      return 0;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        e.a().w(localThrowable);
    }
  }

  protected abstract String getAppkey();

  protected abstract String getSDKTag();

  protected abstract int getSDKVersion();

  public final void log(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
    a(paramInt1, paramString3);
    if ((paramString1 == null) || (!paramString1.equals(getSDKTag())));
    do
    {
      return;
      if (paramInt2 == 1)
      {
        this.a.b(getSDKVersion(), paramInt2, paramString1, getAppkey(), paramString3);
        return;
      }
      if (paramInt2 != 2)
        continue;
      this.a.a(getSDKVersion(), paramInt2, paramString1, getAppkey(), paramString3);
      return;
    }
    while (paramInt1 != 5);
    this.a.a(getSDKVersion(), paramInt2, paramString1, getAppkey(), paramString3);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.a.a.a
 * JD-Core Version:    0.6.0
 */