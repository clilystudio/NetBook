package com.clilystudio.netbook.hpay100.config;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;

final class y
  implements k
{
  y(Context paramContext)
  {
  }

  public final void a(String paramString)
  {
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        String str = l.f(this.a.getApplicationContext());
        a.b.edit().putString(str, paramString).commit();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.y
 * JD-Core Version:    0.6.0
 */