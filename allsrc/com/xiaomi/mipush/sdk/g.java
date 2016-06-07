package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.xiaomi.a.a.a.b;
import com.xiaomi.push.service.D;

public final class g
{
  private static g a;
  private Context b;
  private h c;

  private g(Context paramContext)
  {
    this.b = paramContext;
    this.c = new h(this, 0);
    SharedPreferences localSharedPreferences = h();
    this.c.a = localSharedPreferences.getString("appId", null);
    this.c.b = localSharedPreferences.getString("appToken", null);
    this.c.c = localSharedPreferences.getString("regId", null);
    this.c.d = localSharedPreferences.getString("regSec", null);
    this.c.e = localSharedPreferences.getString("devId", null);
    if ((!TextUtils.isEmpty(this.c.e)) && (this.c.e.startsWith("a-")))
    {
      this.c.e = D.c(this.b);
      localSharedPreferences.edit().putString("devId", this.c.e).commit();
    }
    localSharedPreferences.getString("vName", null);
    this.c.f = localSharedPreferences.getBoolean("valid", true);
    this.c.g = localSharedPreferences.getBoolean("paused", false);
    this.c.h = localSharedPreferences.getInt("envType", 1);
  }

  public static g a(Context paramContext)
  {
    if (a == null)
      a = new g(paramContext);
    return a;
  }

  public static String a(Context paramContext, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo2 = paramContext.getPackageManager().getPackageInfo(paramString, 16384);
      localPackageInfo1 = localPackageInfo2;
      if (localPackageInfo1 != null)
        return localPackageInfo1.versionName;
    }
    catch (Exception localException)
    {
      while (true)
      {
        b.a(localException);
        PackageInfo localPackageInfo1 = null;
      }
    }
    return "1.0";
  }

  public final void a(int paramInt)
  {
    this.c.h = paramInt;
    h().edit().putInt("envType", paramInt).commit();
  }

  public final void a(boolean paramBoolean)
  {
    this.c.g = paramBoolean;
    h().edit().putBoolean("paused", paramBoolean).commit();
  }

  public final boolean a()
  {
    if (!this.c.a())
    {
      b.a("Don't send message before initialization succeeded!");
      return false;
    }
    return true;
  }

  public final boolean a(String paramString1, String paramString2)
  {
    return this.c.b(paramString1, paramString2);
  }

  public final String b()
  {
    return this.c.a;
  }

  public final void b(String paramString1, String paramString2)
  {
    h localh = this.c;
    localh.a = paramString1;
    localh.b = paramString2;
    SharedPreferences.Editor localEditor = localh.i.h().edit();
    localEditor.putString("appId", localh.a);
    localEditor.putString("appToken", paramString2);
    localEditor.commit();
  }

  public final String c()
  {
    return this.c.b;
  }

  public final void c(String paramString1, String paramString2)
  {
    this.c.a(paramString1, paramString2);
  }

  public final String d()
  {
    return this.c.c;
  }

  public final String e()
  {
    return this.c.d;
  }

  public final void f()
  {
    h localh = this.c;
    localh.i.h().edit().clear().commit();
    localh.a = null;
    localh.b = null;
    localh.c = null;
    localh.d = null;
    localh.e = null;
    localh.f = false;
    localh.g = false;
    localh.h = 1;
  }

  public final boolean g()
  {
    return this.c.a();
  }

  public final SharedPreferences h()
  {
    return this.b.getSharedPreferences("mipush", 0);
  }

  public final void i()
  {
    h localh = this.c;
    localh.f = false;
    localh.i.h().edit().putBoolean("valid", localh.f).commit();
  }

  public final boolean j()
  {
    return this.c.g;
  }

  public final int k()
  {
    return this.c.h;
  }

  public final boolean l()
  {
    return !this.c.f;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.g
 * JD-Core Version:    0.6.0
 */