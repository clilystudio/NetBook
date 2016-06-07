package com.alipay.security.mobile.module.b;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.support.design.widget.am;
import android.telephony.TelephonyManager;
import java.io.File;
import java.lang.reflect.Method;

public final class d
{
  private static d a = new d();

  public static d a()
  {
    return a;
  }

  private static String a(String paramString1, String paramString2)
  {
    try
    {
      String str = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { paramString1, paramString2 });
      return str;
    }
    catch (Exception localException)
    {
    }
    return paramString2;
  }

  public static boolean a(Context paramContext)
  {
    int k;
    try
    {
      if ((!Build.HARDWARE.contains("goldfish")) && (!Build.PRODUCT.contains("sdk")) && (!Build.FINGERPRINT.contains("generic")))
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if (localTelephonyManager != null)
        {
          String str = localTelephonyManager.getDeviceId();
          if (str == null)
            break label131;
          int i = str.length();
          if (i != 0)
            break label141;
          break label131;
          if (k >= i)
            break label153;
          if ((Character.isWhitespace(str.charAt(k))) || (str.charAt(k) == '0'))
            break label147;
          j = 0;
          break label134;
        }
        label109: boolean bool = am.a(Settings.Secure.getString(paramContext.getContentResolver(), "android_id"));
        return bool;
      }
    }
    catch (Exception localException)
    {
      return false;
    }
    return true;
    label131: label134: label141: label147: label153: for (int j = 1; ; j = 1)
    {
      if (j == 0)
        break label109;
      return true;
      k = 0;
      break;
      k++;
      break;
    }
  }

  public static String b()
  {
    return "android";
  }

  public static boolean c()
  {
    String[] arrayOfString = { "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/" };
    int i = 0;
    while (i < 5)
      try
      {
        boolean bool = new File(arrayOfString[i] + "su").exists();
        if (bool)
          return true;
        i++;
      }
      catch (Exception localException)
      {
      }
    return false;
  }

  public static String d()
  {
    return Build.BOARD;
  }

  public static String e()
  {
    return Build.BRAND;
  }

  public static String f()
  {
    return Build.DEVICE;
  }

  public static String g()
  {
    return Build.DISPLAY;
  }

  public static String h()
  {
    return Build.VERSION.INCREMENTAL;
  }

  public static String i()
  {
    return Build.MANUFACTURER;
  }

  public static String j()
  {
    return Build.MODEL;
  }

  public static String k()
  {
    return Build.PRODUCT;
  }

  public static String l()
  {
    return Build.VERSION.RELEASE;
  }

  public static String m()
  {
    return Build.VERSION.SDK;
  }

  public static String n()
  {
    return Build.TAGS;
  }

  public static String o()
  {
    return a("ro.kernel.qemu", "0");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.security.mobile.module.b.d
 * JD-Core Version:    0.6.0
 */