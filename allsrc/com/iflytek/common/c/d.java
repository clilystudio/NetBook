package com.iflytek.common.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class d
{
  private SharedPreferences a;

  public d(Context paramContext)
  {
    this.a = paramContext.getSharedPreferences("ifly_launch_lib", 0);
  }

  public final void a(String paramString, long paramLong)
  {
    try
    {
      SharedPreferences.Editor localEditor = this.a.edit();
      localEditor.putLong(paramString, paramLong);
      localEditor.commit();
      return;
    }
    catch (Exception localException)
    {
      c.b("LaunchSetting", "setSetting(" + paramString + ", " + paramLong + ")", localException);
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    if (paramString2 != null)
      paramString2 = paramString2.replace("", "");
    try
    {
      SharedPreferences.Editor localEditor = this.a.edit();
      localEditor.putString(paramString1, paramString2);
      localEditor.commit();
      return;
    }
    catch (Exception localException)
    {
      c.b("LaunchSetting", "setSetting(" + paramString1 + ", " + paramString2 + ")", localException);
    }
  }

  public final long b(String paramString, long paramLong)
  {
    try
    {
      long l = this.a.getLong(paramString, paramLong);
      return l;
    }
    catch (Exception localException)
    {
      c.b("LaunchSetting", "getLongSetting()", localException);
    }
    return paramLong;
  }

  public final String b(String paramString1, String paramString2)
  {
    try
    {
      String str = this.a.getString(paramString1, paramString2);
      return str;
    }
    catch (Exception localException)
    {
      c.b("LaunchSetting", "getString()", localException);
    }
    return paramString2;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.c.d
 * JD-Core Version:    0.6.0
 */