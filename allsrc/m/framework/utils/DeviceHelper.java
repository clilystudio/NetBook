package m.framework.utils;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

public class DeviceHelper
{
  private static DeviceHelper deviceHelper;
  private Context context;

  public DeviceHelper(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
  }

  public static DeviceHelper getInstance(Context paramContext)
  {
    if (deviceHelper == null)
      deviceHelper = new DeviceHelper(paramContext);
    return deviceHelper;
  }

  private boolean isFastMobileNetwork()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)this.context.getSystemService("phone");
    if (localTelephonyManager == null)
      return false;
    switch (localTelephonyManager.getNetworkType())
    {
    default:
      return false;
    case 7:
      return false;
    case 4:
      return false;
    case 2:
      return false;
    case 5:
      return true;
    case 6:
      return true;
    case 1:
      return false;
    case 8:
      return true;
    case 10:
      return true;
    case 9:
      return true;
    case 3:
      return true;
    case 14:
      return true;
    case 12:
      return true;
    case 15:
      return true;
    case 11:
      return false;
    case 13:
      return true;
    case 0:
    }
    return false;
  }

  private boolean isSystemApp(PackageInfo paramPackageInfo)
  {
    int i;
    if ((0x1 & paramPackageInfo.applicationInfo.flags) == 1)
    {
      i = 1;
      if ((0x80 & paramPackageInfo.applicationInfo.flags) != 1)
        break label47;
    }
    label47: for (int j = 1; ; j = 0)
    {
      if ((i != 0) || (j != 0))
        break label52;
      return false;
      i = 0;
      break;
    }
    label52: return true;
  }

  // ERROR //
  public String Base64AES(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_2
    //   1: aload_1
    //   2: invokestatic 65	m/framework/utils/Data:AES128Encode	(Ljava/lang/String;Ljava/lang/String;)[B
    //   5: iconst_0
    //   6: invokestatic 71	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   9: astore 6
    //   11: aload 6
    //   13: astore 4
    //   15: aload 4
    //   17: ldc 73
    //   19: invokevirtual 79	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   22: ifeq +18 -> 40
    //   25: aload 4
    //   27: ldc 73
    //   29: ldc 81
    //   31: invokevirtual 85	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   34: astore 7
    //   36: aload 7
    //   38: astore 4
    //   40: aload 4
    //   42: areturn
    //   43: astore_3
    //   44: aconst_null
    //   45: astore 4
    //   47: aload_3
    //   48: astore 5
    //   50: aload 5
    //   52: invokevirtual 88	java/lang/Throwable:printStackTrace	()V
    //   55: aload 4
    //   57: areturn
    //   58: astore 5
    //   60: goto -10 -> 50
    //
    // Exception table:
    //   from	to	target	type
    //   0	11	43	java/lang/Throwable
    //   15	36	58	java/lang/Throwable
  }

  public String getAppName()
  {
    String str = this.context.getApplicationInfo().name;
    if (str != null);
    int i;
    do
    {
      return str;
      i = this.context.getApplicationInfo().labelRes;
    }
    while (i <= 0);
    return this.context.getString(i);
  }

  public int getAppVersion()
  {
    try
    {
      int i = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionCode;
      return i;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return 0;
  }

  public String getAppVersionName()
  {
    try
    {
      String str = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionName;
      return str;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return "1.0";
  }

  public String getCarrier()
  {
    String str = ((TelephonyManager)this.context.getSystemService("phone")).getSimOperator();
    if (TextUtils.isEmpty(str))
      str = "-1";
    return str;
  }

  public String getDeviceData()
  {
    return Base64AES(getModel() + "|" + getOSVersion() + "|" + getFactory() + "|" + getCarrier() + "|" + getScreenSize(), getDeviceKey().substring(0, 16));
  }

  public String getDeviceId()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)this.context.getSystemService("phone");
    if (localTelephonyManager == null)
      return null;
    String str1 = localTelephonyManager.getDeviceId();
    String str2 = "";
    if (str1 != null)
      str2 = new String(str1).replace("0", "");
    if (((str1 == null) || (str2.length() <= 0)) && (Build.VERSION.SDK_INT >= 9));
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      str1 = (String)localClass.getMethod("get", new Class[] { String.class, String.class }).invoke(localClass, new Object[] { "ro.serialno", "unknown" });
      return str1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        str1 = null;
      }
    }
  }

  public String getDeviceKey()
  {
    try
    {
      String str1 = getMacAddress();
      String str2 = getDeviceId();
      String str3 = getModel();
      String str4 = Data.byteToHex(Data.SHA1(str1 + ":" + str2 + ":" + str3));
      return str4;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  public String getFactory()
  {
    return Build.MANUFACTURER;
  }

  public ArrayList<HashMap<String, String>> getInstalledApp(boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      PackageManager localPackageManager = this.context.getPackageManager();
      Iterator localIterator = localPackageManager.getInstalledPackages(0).iterator();
      while (true)
      {
        if (!localIterator.hasNext())
          return localArrayList;
        PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
        if ((!paramBoolean) && (isSystemApp(localPackageInfo)))
          continue;
        HashMap localHashMap = new HashMap();
        localHashMap.put("pkg", localPackageInfo.packageName);
        localHashMap.put("name", localPackageInfo.applicationInfo.loadLabel(localPackageManager).toString());
        localHashMap.put("version", localPackageInfo.versionName);
        localArrayList.add(localHashMap);
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return localArrayList;
  }

  public String getMacAddress()
  {
    WifiManager localWifiManager = (WifiManager)this.context.getSystemService("wifi");
    String str;
    if (localWifiManager == null)
      str = null;
    while (true)
    {
      return str;
      WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
      if (localWifiInfo == null)
        break;
      str = localWifiInfo.getMacAddress();
      if (str == null)
        return null;
    }
    return null;
  }

  public String getModel()
  {
    return Build.MODEL;
  }

  public String getNetworkOperator()
  {
    return ((TelephonyManager)this.context.getSystemService("phone")).getNetworkOperator();
  }

  public String getNetworkType()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)this.context.getSystemService("connectivity");
    if (localConnectivityManager == null)
      return null;
    NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isAvailable()))
      return null;
    int i = localNetworkInfo.getType();
    if (1 == i)
      return "wifi";
    if (i == 0)
    {
      String str1 = Proxy.getDefaultHost();
      String str2 = "";
      if ((str1 != null) && (str1.length() > 0))
        str2 = " wap";
      if (isFastMobileNetwork());
      for (String str3 = "3G"; ; str3 = "2G")
        return str3 + str2;
    }
    return null;
  }

  public String getOSVersion()
  {
    return String.valueOf(Build.VERSION.SDK_INT);
  }

  public String getPackageName()
  {
    return this.context.getPackageName();
  }

  public int getPlatformCode()
  {
    return 1;
  }

  public JSONArray getRunningApp()
  {
    JSONArray localJSONArray = new JSONArray();
    ActivityManager localActivityManager = (ActivityManager)this.context.getSystemService("activity");
    if (localActivityManager == null)
      return localJSONArray;
    List localList = localActivityManager.getRunningAppProcesses();
    if (localList == null)
      return localJSONArray;
    Iterator localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localJSONArray;
      localJSONArray.put(((ActivityManager.RunningAppProcessInfo)localIterator.next()).processName);
    }
  }

  public String getRunningAppStr()
  {
    JSONArray localJSONArray = getRunningApp();
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; i++)
    {
      if (i >= localJSONArray.length())
        return localStringBuilder.toString();
      if (i > 0)
        localStringBuilder.append(',');
      localStringBuilder.append(String.valueOf(localJSONArray.get(i)));
    }
  }

  public String getScreenSize()
  {
    DisplayMetrics localDisplayMetrics = this.context.getResources().getDisplayMetrics();
    if (this.context.getResources().getConfiguration().orientation == 1)
      return localDisplayMetrics.widthPixels + "x" + localDisplayMetrics.heightPixels;
    return localDisplayMetrics.heightPixels + "x" + localDisplayMetrics.widthPixels;
  }

  public String getSdcardPath()
  {
    return Environment.getExternalStorageDirectory().getAbsolutePath();
  }

  public boolean getSdcardState()
  {
    return "mounted".equals(Environment.getExternalStorageState());
  }

  public String getTopTaskPackageName()
  {
    try
    {
      String str = ((ActivityManager.RunningTaskInfo)((ActivityManager)this.context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getPackageName();
      return str;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }

  public boolean isRooted()
  {
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.utils.DeviceHelper
 * JD-Core Version:    0.6.0
 */