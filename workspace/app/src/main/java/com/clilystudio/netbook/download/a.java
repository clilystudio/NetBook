package com.clilystudio.netbook.download;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import java.util.Set;

public final class a
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private boolean g = false;
  private int h;
  private Handler i = new b(this);

  @TargetApi(11)
  public a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.a = paramContext;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramString3;
    this.e = e.a;
    this.f = paramString4;
    Set localSet = paramContext.getSharedPreferences("downloadInfo", 0).getStringSet("downloadedPackage", null);
    if ((localSet != null) && (localSet.contains(paramString4)))
    {
      this.g = true;
      return;
    }
    this.g = false;
  }

  public final void a()
  {
    float f1 = com.arcsoft.hpay100.a.a.u(this.a, "rate_test");
    double d1 = Math.random();
    if ((f1 <= d1) || (e.a(this.a, this.f)));
    do
      return;
    while ((this.g) && ((!this.g) || (e.a(this.e, this.b).booleanValue())));
    if (e.a(this.a))
    {
      new d(this).start();
      new c(this).start();
      com.umeng.a.b.a(this.a, "manhuadao_download_count", this.c);
      return;
    }
    SharedPreferences.Editor localEditor = this.a.getSharedPreferences("downloadInfo", 0).edit();
    localEditor.putString("apkName", this.b);
    localEditor.putString("apkUrl", this.c);
    localEditor.putString("iconUrl", this.d);
    localEditor.putString("packageName", this.f);
    localEditor.apply();
  }

  public final String b()
  {
    return this.f;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.download.a
 * JD-Core Version:    0.6.0
 */