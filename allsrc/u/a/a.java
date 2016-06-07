package u.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public class a
{
  private static String a = a.class.getName();

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

  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public static boolean a(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }

  public static String b(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager == null)
      b.d(a, "No IMEI.");
    try
    {
      if (a(paramContext, "android.permission.READ_PHONE_STATE"))
      {
        String str2 = localTelephonyManager.getDeviceId();
        str1 = str2;
        if (TextUtils.isEmpty(str1))
        {
          b.d(a, "No IMEI.");
          str1 = j(paramContext);
          if (TextUtils.isEmpty(str1))
          {
            b.d(a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
            str1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
            b.a(a, "getDeviceId: Secure.ANDROID_ID: " + str1);
          }
        }
        return str1;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        b.d(a, "No IMEI.", localException);
        String str1 = "";
      }
    }
  }

  public static boolean c(Context paramContext)
  {
    return "Wi-Fi".equals(i(paramContext)[0]);
  }

  public static boolean d(Context paramContext)
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

  public static String e(Context paramContext)
  {
    try
    {
      ApplicationInfo localApplicationInfo = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo != null)
      {
        String str = localApplicationInfo.metaData.getString("UMENG_APPKEY");
        if (str != null)
          return str.trim();
        b.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
      }
      return null;
    }
    catch (Exception localException)
    {
      while (true)
        b.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", localException);
    }
  }

  public static String f(Context paramContext)
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
          b.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
          return "Unknown";
        }
      }
    }
    catch (Exception localException)
    {
      b.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
      localException.printStackTrace();
    }
    return "Unknown";
  }

  public static String g(Context paramContext)
  {
    return paramContext.getPackageName();
  }

  public static String h(Context paramContext)
  {
    return paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString();
  }

  private static String[] i(Context paramContext)
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

  private static String j(Context paramContext)
  {
    try
    {
      WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
        return localWifiManager.getConnectionInfo().getMacAddress();
      b.d(a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
      return "";
    }
    catch (Exception localException)
    {
      while (true)
        b.d(a, "Could not get mac address." + localException.toString());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.a.a
 * JD-Core Version:    0.6.0
 */