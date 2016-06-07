package com.umeng.update;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.support.design.widget.K;
import com.umeng.update.net.i;
import com.umeng.update.net.u;
import u.a.a;

public final class o
  implements u
{
  private final String a = "delta_update";
  private final String b = "update_normal";
  private K c = null;
  private String d = null;
  private String e = null;
  private String f = null;
  private String g = null;
  private Context h = null;
  private String i = null;
  private i j = null;
  private boolean k = false;

  private void a(i parami)
  {
    try
    {
      m = this.h.getPackageManager().getPackageInfo(this.h.getPackageName(), 0).applicationInfo.targetSdkVersion;
      if ((Build.VERSION.SDK_INT >= 16) && (m >= 14) && (k.h()) && (!k.e()))
        parami.a(true);
      parami.b(k.e());
      parami.c(k.e());
      parami.a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        int m = 0;
    }
  }

  public final void a(int paramInt)
  {
    switch (paramInt)
    {
    case 3:
    case 4:
    case 5:
    default:
      return;
    case 2:
    case 7:
      this.k = true;
      return;
    case 6:
    }
    this.k = false;
  }

  public final void a(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    case 0:
    case 1:
    case 2:
    default:
    case 3:
    }
    while (true)
    {
      this.k = false;
      return;
      c();
    }
  }

  public final void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, K paramK)
  {
    this.h = paramContext;
    this.i = a.h(paramContext);
    this.d = paramString1;
    this.e = paramString2;
    this.f = paramString3;
    this.g = paramString4;
    this.c = paramK;
  }

  public final boolean a()
  {
    return this.k;
  }

  public final void b()
  {
    this.j = new i(this.h, this.a, this.i, this.f, this);
    this.j.a(this.g);
    this.j.b(this.e);
    a(this.j);
  }

  public final void c()
  {
    this.j = new i(this.h, this.b, this.i, this.d, this);
    this.j.a(this.e);
    this.j.b(this.e);
    a(this.j);
  }

  public final void d()
  {
    this.k = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.o
 * JD-Core Version:    0.6.0
 */