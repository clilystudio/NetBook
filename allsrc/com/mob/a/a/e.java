package com.mob.a.a;

import android.content.Context;
import com.mob.tools.b.i;

public final class e
{
  private static e a;
  private i b;

  private e(Context paramContext)
  {
    this.b = new i(paramContext.getApplicationContext());
    this.b.a("mob_sdk_exception", 1);
  }

  public static e a(Context paramContext)
  {
    if (a == null)
      a = new e(paramContext);
    return a;
  }

  public final long a()
  {
    return this.b.c("service_time");
  }

  public final void a(long paramLong)
  {
    this.b.a("service_time", Long.valueOf(paramLong));
  }

  public final void a(String paramString)
  {
    this.b.a("err_log_filter", paramString);
  }

  public final void a(boolean paramBoolean)
  {
    i locali = this.b;
    if (paramBoolean);
    for (int i = 0; ; i = 1)
    {
      locali.a("is_upload_err_log", Integer.valueOf(i));
      return;
    }
  }

  public final void b(boolean paramBoolean)
  {
    this.b.a("is_upload_crash", Boolean.valueOf(paramBoolean));
  }

  public final boolean b()
  {
    return this.b.d("is_upload_err_log") == 0;
  }

  public final void c(boolean paramBoolean)
  {
    this.b.a("is_upload_sdkerr", Boolean.valueOf(paramBoolean));
  }

  public final boolean c()
  {
    return this.b.b("is_upload_crash");
  }

  public final void d(boolean paramBoolean)
  {
    this.b.a("is_upload_apperr", Boolean.valueOf(paramBoolean));
  }

  public final boolean d()
  {
    return this.b.b("is_upload_sdkerr");
  }

  public final boolean e()
  {
    return this.b.b("is_upload_apperr");
  }

  public final String f()
  {
    return this.b.a("err_log_filter");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.a.a.e
 * JD-Core Version:    0.6.0
 */