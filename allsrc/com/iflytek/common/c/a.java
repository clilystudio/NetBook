package com.iflytek.common.c;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Field;

public class a
{
  private String a;
  private String b;
  private String c;
  private String d;
  private TelephonyManager e;

  public a(Context paramContext)
  {
    this.e = ((TelephonyManager)paramContext.getSystemService("phone"));
    a();
    this.d = a(paramContext);
    int i = Build.VERSION.SDK_INT;
    String str = "";
    if (i > 7)
      str = Build.HARDWARE;
    this.c = "Android";
    this.b = (a("MANUFACTURER") + "|" + a("MODEL") + "|" + a("PRODUCT") + "|ANDROID" + Build.VERSION.RELEASE + "|" + this.d + "|" + str);
  }

  private String a(Context paramContext)
  {
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    int i;
    if (localDisplay.getOrientation() == 0)
      i = localDisplay.getWidth();
    for (int j = localDisplay.getHeight(); ; j = localDisplay.getWidth())
    {
      return i + "*" + j;
      i = localDisplay.getHeight();
    }
  }

  private String a(String paramString)
  {
    try
    {
      Field localField = Build.class.getField(paramString);
      Build localBuild = new Build();
      if (localField != null)
      {
        String str = localField.get(localBuild).toString();
        return str;
      }
    }
    catch (Exception localException)
    {
      c.a("", "", localException);
    }
    return "";
  }

  public String a()
  {
    try
    {
      if ((this.a == null) || (this.a.length() <= 0))
      {
        this.a = this.e.getDeviceId();
        c.a("", "getIMEI:" + this.a);
      }
      return this.a;
    }
    catch (Exception localException)
    {
      while (true)
        c.a("", "", localException);
    }
  }

  public String b()
  {
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.c.a
 * JD-Core Version:    0.6.0
 */