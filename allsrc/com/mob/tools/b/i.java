package com.mob.tools.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class i
{
  private Context a;
  private SharedPreferences b;

  public i(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  public final String a(String paramString)
  {
    return this.b.getString(paramString, "");
  }

  public final void a(String paramString, int paramInt)
  {
    String str = paramString + "_1";
    this.b = this.a.getSharedPreferences(str, 0);
  }

  public final void a(String paramString, Boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.b.edit();
    localEditor.putBoolean(paramString, paramBoolean.booleanValue());
    localEditor.commit();
  }

  public final void a(String paramString, Integer paramInteger)
  {
    SharedPreferences.Editor localEditor = this.b.edit();
    localEditor.putInt(paramString, paramInteger.intValue());
    localEditor.commit();
  }

  public final void a(String paramString, Long paramLong)
  {
    SharedPreferences.Editor localEditor = this.b.edit();
    localEditor.putLong(paramString, paramLong.longValue());
    localEditor.commit();
  }

  public final void a(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = this.b.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  public final boolean b(String paramString)
  {
    return this.b.getBoolean(paramString, false);
  }

  public final long c(String paramString)
  {
    return this.b.getLong(paramString, 0L);
  }

  public final int d(String paramString)
  {
    return this.b.getInt(paramString, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b.i
 * JD-Core Version:    0.6.0
 */