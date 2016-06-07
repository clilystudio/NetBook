package u.aly;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

public class bs
{
  private static String a = bs.class.getName();

  private static int a(Object paramObject, String paramString)
  {
    try
    {
      Field localField = DisplayMetrics.class.getDeclaredField(paramString);
      localField.setAccessible(true);
      int i = localField.getInt(paramObject);
      return i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return -1;
  }

  public static String a()
  {
    String str = null;
    try
    {
      FileReader localFileReader = new FileReader("/proc/cpuinfo");
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(localFileReader, 1024);
        str = localBufferedReader.readLine();
        localBufferedReader.close();
        localFileReader.close();
        if (str != null)
          return str.substring(1 + str.indexOf(':')).trim();
      }
      catch (IOException localIOException)
      {
        while (true)
          bt.b(a, "Could not read from file /proc/cpuinfo", localIOException);
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
        bt.b(a, "Could not open file /proc/cpuinfo", localFileNotFoundException);
    }
    return "";
  }

  public static String a(Context paramContext)
  {
    try
    {
      String str = String.valueOf(paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode);
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return "";
  }

  public static boolean a(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }

  public static String b(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return "";
  }

  public static String c(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager == null)
      bt.d(a, "No IMEI.");
    try
    {
      if (a(paramContext, "android.permission.READ_PHONE_STATE"))
      {
        String str2 = localTelephonyManager.getDeviceId();
        str1 = str2;
        if (TextUtils.isEmpty(str1))
        {
          bt.d(a, "No IMEI.");
          str1 = k(paramContext);
          if (TextUtils.isEmpty(str1))
          {
            bt.d(a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
            str1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
            bt.a(a, "getDeviceId: Secure.ANDROID_ID: " + str1);
          }
        }
        return str1;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        bt.d(a, "No IMEI.", localException);
        String str1 = "";
      }
    }
  }

  public static String d(Context paramContext)
  {
    return bx.b(c(paramContext));
  }

  public static String[] e(Context paramContext)
  {
    String[] arrayOfString = { "", "" };
    try
    {
      if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0)
      {
        arrayOfString[0] = "";
        return arrayOfString;
      }
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
      {
        arrayOfString[0] = "";
        return arrayOfString;
      }
      if (localConnectivityManager.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED)
      {
        arrayOfString[0] = "Wi-Fi";
        return arrayOfString;
      }
      NetworkInfo localNetworkInfo = localConnectivityManager.getNetworkInfo(0);
      if (localNetworkInfo.getState() == NetworkInfo.State.CONNECTED)
      {
        arrayOfString[0] = "2G/3G";
        arrayOfString[1] = localNetworkInfo.getSubtypeName();
        return arrayOfString;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return arrayOfString;
  }

  public static boolean f(Context paramContext)
  {
    return "Wi-Fi".equals(e(paramContext)[0]);
  }

  public static boolean g(Context paramContext)
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        boolean bool = localNetworkInfo.isConnectedOrConnecting();
        return bool;
      }
      return false;
    }
    catch (Exception localException)
    {
    }
    return true;
  }

  public static int h(Context paramContext)
  {
    try
    {
      Calendar localCalendar = Calendar.getInstance(q(paramContext));
      if (localCalendar != null)
      {
        int i = localCalendar.getTimeZone().getRawOffset() / 3600000;
        return i;
      }
    }
    catch (Exception localException)
    {
      bt.a(a, "error in getTimeZone", localException);
    }
    return 8;
  }

  public static String[] i(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    try
    {
      Locale localLocale = q(paramContext);
      if (localLocale != null)
      {
        arrayOfString[0] = localLocale.getCountry();
        arrayOfString[1] = localLocale.getLanguage();
      }
      if (TextUtils.isEmpty(arrayOfString[0]))
        arrayOfString[0] = "Unknown";
      if (TextUtils.isEmpty(arrayOfString[1]))
        arrayOfString[1] = "Unknown";
      return arrayOfString;
    }
    catch (Exception localException)
    {
      bt.b(a, "error in getLocaleInfo", localException);
    }
    return arrayOfString;
  }

  public static String j(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo != null)
      {
        String str = localApplicationInfo.metaData.getString("UMENG_APPKEY");
        if (str != null)
          return str.trim();
        bt.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
      }
      return null;
    }
    catch (Exception localException)
    {
      while (true)
        bt.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", localException);
    }
  }

  public static String k(Context paramContext)
  {
    try
    {
      WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
        return localWifiManager.getConnectionInfo().getMacAddress();
      bt.d(a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
      return "";
    }
    catch (Exception localException)
    {
      while (true)
        bt.d(a, "Could not get mac address." + localException.toString());
    }
  }

  public static int[] l(Context paramContext)
  {
    while (true)
    {
      int j;
      int i;
      int n;
      int i1;
      try
      {
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        if ((0x2000 & paramContext.getApplicationInfo().flags) == 0)
        {
          j = a(localDisplayMetrics, "noncompatWidthPixels");
          i = a(localDisplayMetrics, "noncompatHeightPixels");
          break label151;
          int k = localDisplayMetrics.widthPixels;
          int m = localDisplayMetrics.heightPixels;
          n = k;
          i1 = m;
          label81: int[] arrayOfInt = new int[2];
          if (n <= i1)
            continue;
          arrayOfInt[0] = i1;
          arrayOfInt[1] = n;
          return arrayOfInt;
          arrayOfInt[0] = n;
          arrayOfInt[1] = i1;
          return arrayOfInt;
        }
      }
      catch (Exception localException)
      {
        bt.b(a, "read resolution fail", localException);
        return null;
      }
      label151: 
      do
      {
        n = j;
        i1 = i;
        break label81;
        i = 0;
        j = -1;
        if (j == -1)
          break;
      }
      while (i != -1);
    }
  }

  public static String m(Context paramContext)
  {
    try
    {
      String str = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
      return str;
    }
    catch (Exception localException)
    {
      bt.a(a, "read carrier fail", localException);
    }
    return "Unknown";
  }

  public static String n(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if ((localApplicationInfo != null) && (localApplicationInfo.metaData != null))
      {
        Object localObject = localApplicationInfo.metaData.get("UMENG_CHANNEL");
        if (localObject != null)
        {
          String str = localObject.toString();
          if (str != null)
            return str;
          bt.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
          return "Unknown";
        }
      }
    }
    catch (Exception localException)
    {
      bt.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
      localException.printStackTrace();
    }
    return "Unknown";
  }

  public static String o(Context paramContext)
  {
    return paramContext.getPackageName();
  }

  public static String p(Context paramContext)
  {
    return paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString();
  }

  private static Locale q(Context paramContext)
  {
    try
    {
      Configuration localConfiguration = new Configuration();
      localConfiguration.setToDefaults();
      Settings.System.getConfiguration(paramContext.getContentResolver(), localConfiguration);
      localLocale = localConfiguration.locale;
      if (localLocale == null)
        localLocale = Locale.getDefault();
      return localLocale;
    }
    catch (Exception localException)
    {
      while (true)
      {
        bt.b(a, "fail to read user config locale");
        Locale localLocale = null;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bs
 * JD-Core Version:    0.6.0
 */