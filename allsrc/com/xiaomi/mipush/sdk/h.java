package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.push.service.D;

final class h
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public boolean f = true;
  public boolean g = false;
  public int h = 1;

  private h(g paramg)
  {
  }

  private String b()
  {
    return g.a(g.a(this.i), g.a(this.i).getPackageName());
  }

  public final void a(String paramString1, String paramString2)
  {
    this.c = paramString1;
    this.d = paramString2;
    this.e = D.c(g.a(this.i));
    b();
    this.f = true;
    SharedPreferences.Editor localEditor = this.i.h().edit();
    localEditor.putString("regId", paramString1);
    localEditor.putString("regSec", paramString2);
    localEditor.putString("devId", this.e);
    localEditor.putString("vName", b());
    localEditor.putBoolean("valid", true);
    localEditor.commit();
  }

  public final boolean a()
  {
    return b(this.a, this.b);
  }

  public final boolean b(String paramString1, String paramString2)
  {
    return (TextUtils.equals(this.a, paramString1)) && (TextUtils.equals(this.b, paramString2)) && (!TextUtils.isEmpty(this.c)) && (!TextUtils.isEmpty(this.d)) && (TextUtils.equals(this.e, D.c(g.a(this.i))));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.h
 * JD-Core Version:    0.6.0
 */