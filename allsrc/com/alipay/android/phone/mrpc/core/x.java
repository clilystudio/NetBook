package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

public final class x
{
  private static Boolean a = null;

  public static final boolean a(Context paramContext)
  {
    if (a != null)
      return a.booleanValue();
    try
    {
      if ((0x2 & paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 0).flags) != 0);
      for (boolean bool1 = true; ; bool1 = false)
      {
        Boolean localBoolean = Boolean.valueOf(bool1);
        a = localBoolean;
        boolean bool2 = localBoolean.booleanValue();
        return bool2;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.x
 * JD-Core Version:    0.6.0
 */