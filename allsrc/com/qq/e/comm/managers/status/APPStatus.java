package com.qq.e.comm.managers.status;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.qq.e.comm.util.StringUtil;

public class APPStatus
{
  private String a;
  private Context b;

  public APPStatus(String paramString, Context paramContext)
  {
    this.a = paramString;
    this.b = paramContext;
  }

  public String getAPPID()
  {
    return this.a;
  }

  public String getAPPName()
  {
    return this.b.getPackageName();
  }

  public String getAPPVersion()
  {
    String str1 = getAPPName();
    boolean bool = StringUtil.isEmpty(str1);
    String str2 = null;
    if (!bool);
    try
    {
      str2 = this.b.getPackageManager().getPackageInfo(str1, 0).versionName;
      return str2;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.managers.status.APPStatus
 * JD-Core Version:    0.6.0
 */