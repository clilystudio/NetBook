package com.mob.tools.b;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.mob.tools.e;
import com.mob.tools.log.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public class a
{
  private static a b;
  private Context a;

  private a(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  public static a a(Context paramContext)
  {
    if ((b == null) && (paramContext != null))
      b = new a(paramContext);
    return b;
  }

  private Object a(String paramString)
  {
    try
    {
      Object localObject = this.a.getSystemService(paramString);
      return localObject;
    }
    catch (Throwable localThrowable)
    {
      e.a().w(localThrowable);
    }
    return null;
  }

  // ERROR //
  public static String a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_0
    //   2: invokestatic 50	com/arcsoft/hpay100/a/a:d	(Ljava/lang/String;Ljava/lang/String;)[B
    //   5: iconst_0
    //   6: invokestatic 56	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   9: astore 6
    //   11: aload 6
    //   13: astore_3
    //   14: aload_3
    //   15: ldc 58
    //   17: invokevirtual 64	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   20: ifeq +16 -> 36
    //   23: aload_3
    //   24: ldc 58
    //   26: ldc 66
    //   28: invokevirtual 70	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   31: astore 7
    //   33: aload 7
    //   35: astore_3
    //   36: aload_3
    //   37: areturn
    //   38: astore_2
    //   39: aconst_null
    //   40: astore_3
    //   41: aload_2
    //   42: astore 4
    //   44: invokestatic 37	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   47: aload 4
    //   49: invokevirtual 43	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   52: pop
    //   53: aload_3
    //   54: areturn
    //   55: astore 4
    //   57: goto -13 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   0	11	38	java/lang/Throwable
    //   14	33	55	java/lang/Throwable
  }

  private static String b(int paramInt)
  {
    long l = System.currentTimeMillis() ^ SystemClock.elapsedRealtime();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(l);
    Random localRandom = new Random();
    int i = 0;
    if (i < 40)
    {
      String str;
      if (localRandom.nextInt(2) % 2 == 0)
      {
        str = "char";
        label56: if (!"char".equalsIgnoreCase(str))
          break label103;
        char c = (char)(97 + localRandom.nextInt(26));
        localStringBuffer.insert(i + 1, c);
      }
      while (true)
      {
        i++;
        break;
        str = "num";
        break label56;
        label103: localStringBuffer.insert(localStringBuffer.length(), localRandom.nextInt(10));
      }
    }
    return localStringBuffer.toString().substring(0, 40);
  }

  private boolean b(String paramString)
  {
    int i;
    if (Build.VERSION.SDK_INT >= 23)
    {
      try
      {
        h.a("android.content.Context");
        Integer localInteger = (Integer)h.a(this.a, "checkSelfPermission", new Object[] { paramString });
        if (localInteger == null)
        {
          i = -1;
          break label113;
        }
        int j = localInteger.intValue();
        i = j;
      }
      catch (Throwable localThrowable)
      {
        e.a().w(localThrowable);
        i = -1;
      }
    }
    else
    {
      this.a.checkPermission(paramString, Process.myPid(), Process.myUid());
      i = this.a.getPackageManager().checkPermission(paramString, this.a.getPackageName());
    }
    label113: 
    while (i != 0)
      return false;
    return true;
  }

  public static boolean p()
  {
    try
    {
      boolean bool = "mounted".equals(Environment.getExternalStorageState());
      return bool;
    }
    catch (Throwable localThrowable)
    {
      e.a().w(localThrowable);
    }
    return false;
  }

  private String s()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)a("phone");
    if (localTelephonyManager == null);
    while (true)
    {
      return null;
      try
      {
        if (b("android.permission.READ_PHONE_STATE"))
        {
          String str2 = localTelephonyManager.getDeviceId();
          str1 = str2;
          if (!TextUtils.isEmpty(str1))
            return str1;
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          e.a().w(localThrowable);
          String str1 = null;
        }
      }
    }
  }

  private static String t()
  {
    if (Build.VERSION.SDK_INT >= 9)
      try
      {
        Class localClass = Class.forName("android.os.SystemProperties");
        String str = (String)localClass.getMethod("get", new Class[] { String.class, String.class }).invoke(localClass, new Object[] { "ro.serialno", "unknown" });
        return str;
      }
      catch (Throwable localThrowable)
      {
        e.a().d(localThrowable);
        return null;
      }
    return null;
  }

  private String u()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)a("connectivity");
    if (localConnectivityManager == null)
      return "none";
    try
    {
      if (!b("android.permission.ACCESS_NETWORK_STATE"))
        return "none";
    }
    catch (Throwable localThrowable)
    {
      e.a().w(localThrowable);
      return "none";
    }
    NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isAvailable()))
      return "none";
    int i = localNetworkInfo.getType();
    switch (i)
    {
    case 2:
    case 3:
    case 4:
    case 5:
    default:
      return String.valueOf(i);
    case 1:
      return "wifi";
    case 0:
      TelephonyManager localTelephonyManager1 = (TelephonyManager)a("phone");
      if ((localTelephonyManager1 != null) && (localTelephonyManager1.getNetworkType() == 13));
      for (int j = 1; j != 0; j = 0)
        return "4G";
      TelephonyManager localTelephonyManager2 = (TelephonyManager)a("phone");
      if (localTelephonyManager2 != null);
      int k;
      switch (localTelephonyManager2.getNetworkType())
      {
      default:
        k = 0;
      case 7:
      case 4:
      case 2:
      case 5:
      case 6:
      case 1:
      case 8:
      case 10:
      case 9:
      case 3:
      case 14:
      case 12:
      case 15:
      case 11:
      case 13:
      case 0:
      }
      while (k != 0)
      {
        return "3G";
        k = 0;
        continue;
        k = 0;
        continue;
        k = 0;
        continue;
        k = 1;
        continue;
        k = 1;
        continue;
        k = 0;
        continue;
        k = 1;
        continue;
        k = 1;
        continue;
        k = 1;
        continue;
        k = 1;
        continue;
        k = 1;
        continue;
        k = 1;
        continue;
        k = 1;
        continue;
        k = 0;
        continue;
        k = 1;
        continue;
        k = 0;
      }
      return "2G";
    case 7:
      return "bluetooth";
    case 8:
      return "dummy";
    case 9:
      return "ethernet";
    case 6:
    }
    return "wimax";
  }

  public final String a()
  {
    WifiManager localWifiManager = (WifiManager)a("wifi");
    String str;
    if (localWifiManager == null)
      str = null;
    while (true)
    {
      return str;
      WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
      if (localWifiInfo == null)
        break;
      str = localWifiInfo.getSSID().replace("\"", "");
      if (str == null)
        return null;
    }
    return null;
  }

  public final ArrayList<HashMap<String, String>> a(boolean paramBoolean)
  {
    while (true)
    {
      ArrayList localArrayList;
      try
      {
        PackageManager localPackageManager = this.a.getPackageManager();
        List localList = localPackageManager.getInstalledPackages(0);
        localArrayList = new ArrayList();
        Iterator localIterator = localList.iterator();
        if (!localIterator.hasNext())
          break label208;
        PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
        if ((0x1 & localPackageInfo.applicationInfo.flags) == 1)
        {
          i = 1;
          if ((0x80 & localPackageInfo.applicationInfo.flags) != 1)
            break label196;
          j = 1;
          break label211;
          if (k != 0)
            continue;
          HashMap localHashMap = new HashMap();
          localHashMap.put("pkg", localPackageInfo.packageName);
          localHashMap.put("name", localPackageInfo.applicationInfo.loadLabel(localPackageManager).toString());
          localHashMap.put("version", localPackageInfo.versionName);
          localArrayList.add(localHashMap);
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        e.a().w(localThrowable);
        return new ArrayList();
      }
      int i = 0;
      continue;
      label196: int j = 0;
      label208: label211: 
      while ((i == 0) && (j == 0))
      {
        k = 0;
        break;
        return localArrayList;
      }
      int k = 1;
    }
  }

  public final boolean a(int paramInt)
  {
    ActivityManager localActivityManager = (ActivityManager)a("activity");
    if (localActivityManager.getRunningAppProcesses() == null)
      return paramInt <= 0;
    if (paramInt <= 0)
      paramInt = Process.myPid();
    Iterator localIterator = localActivityManager.getRunningAppProcesses().iterator();
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    do
    {
      if (!localIterator.hasNext())
        break;
      localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
    }
    while (localRunningAppProcessInfo.pid != paramInt);
    for (String str = localRunningAppProcessInfo.processName; ; str = null)
      return this.a.getPackageName().equals(str);
  }

  public final String b()
  {
    WifiManager localWifiManager = (WifiManager)a("wifi");
    String str;
    if (localWifiManager == null)
      str = null;
    while (true)
    {
      return str;
      WifiInfo localWifiInfo = localWifiManager.getConnectionInfo();
      if (localWifiInfo == null)
        break;
      str = localWifiInfo.getBSSID();
      if (str == null)
        return null;
    }
    return null;
  }

  public final String c()
  {
    WifiManager localWifiManager = (WifiManager)a("wifi");
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

  public final String d()
  {
    String str = s();
    if ((TextUtils.isEmpty(str)) && (Build.VERSION.SDK_INT >= 9))
      str = t();
    return str;
  }

  public final String e()
  {
    int[] arrayOfInt = com.arcsoft.hpay100.a.a.l(this.a);
    if (this.a.getResources().getConfiguration().orientation == 1)
      return arrayOfInt[0] + "x" + arrayOfInt[1];
    return arrayOfInt[1] + "x" + arrayOfInt[0];
  }

  public final String f()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)a("phone");
    String str;
    if (localTelephonyManager == null)
      str = "-1";
    do
    {
      return str;
      str = localTelephonyManager.getSimOperator();
    }
    while (!TextUtils.isEmpty(str));
    return "-1";
  }

  public final String g()
  {
    try
    {
      BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if ((localBluetoothAdapter != null) && (b("android.permission.BLUETOOTH")))
      {
        String str = localBluetoothAdapter.getName();
        return str;
      }
    }
    catch (Throwable localThrowable)
    {
      e.a().d(localThrowable);
    }
    return null;
  }

  public final String h()
  {
    try
    {
      String str = com.arcsoft.hpay100.a.a.d(this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 64).signatures[0].toByteArray());
      return str;
    }
    catch (Exception localException)
    {
      e.a().w(localException);
    }
    return null;
  }

  public final String i()
  {
    String str = u().toLowerCase();
    if ((TextUtils.isEmpty(str)) || ("none".equals(str)))
      str = "none";
    do
    {
      return str;
      if (str.startsWith("wifi"))
        return "wifi";
      if (str.startsWith("4g"))
        return "4g";
      if (str.startsWith("3g"))
        return "3g";
      if (str.startsWith("2g"))
        return "2g";
    }
    while (!str.startsWith("bluetooth"));
    return "bluetooth";
  }

  public final String j()
  {
    Object localObject1;
    try
    {
      if (!p())
      {
        localObject1 = null;
      }
      else
      {
        File localFile3 = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "ShareSDK");
        if (!localFile3.exists())
        {
          localObject1 = null;
        }
        else
        {
          File localFile4 = new File(localFile3, ".dk");
          if (!localFile4.exists())
          {
            localObject1 = null;
          }
          else
          {
            ObjectInputStream localObjectInputStream = new ObjectInputStream(new FileInputStream(localFile4));
            Object localObject3 = localObjectInputStream.readObject();
            if ((localObject3 != null) && ((localObject3 instanceof char[])))
            {
              localObject1 = String.valueOf((char[])localObject3);
              localObjectInputStream.close();
            }
          }
        }
      }
    }
    catch (Throwable localThrowable1)
    {
      e.a().w(localThrowable1);
      localObject1 = null;
    }
    do
    {
      try
      {
        String str2 = c();
        String str3 = d();
        String str4 = Build.MODEL;
        String str5 = str2 + ":" + str3 + ":" + str4;
        if (TextUtils.isEmpty(str5));
        byte[] arrayOfByte2;
        for (Object localObject2 = null; ; localObject2 = arrayOfByte2)
        {
          String str6 = com.arcsoft.hpay100.a.a.c(localObject2);
          str1 = str6;
          if (!TextUtils.isEmpty(str1))
            break;
          localObject1 = b(40);
          if (localObject1 == null)
            break label423;
          try
          {
            if (!p())
              break label423;
            File localFile1 = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "ShareSDK");
            if (!localFile1.exists())
              localFile1.mkdirs();
            File localFile2 = new File(localFile1, ".dk");
            if (localFile2.exists())
              localFile2.delete();
            ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(new FileOutputStream(localFile2));
            localObjectOutputStream.writeObject(((String)localObject1).toCharArray());
            localObjectOutputStream.flush();
            localObjectOutputStream.close();
            return localObject1;
          }
          catch (Throwable localThrowable3)
          {
            e.a().w(localThrowable3);
            return localObject1;
          }
          byte[] arrayOfByte1 = str5.getBytes("utf-8");
          MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
          localMessageDigest.update(arrayOfByte1);
          arrayOfByte2 = localMessageDigest.digest();
        }
      }
      catch (Throwable localThrowable2)
      {
        while (true)
        {
          e.a().d(localThrowable2);
          String str1 = null;
          continue;
          localObject1 = str1;
        }
      }
      localObject1 = null;
      break;
    }
    while (localObject1 == null);
    label423: return (String)(String)localObject1;
  }

  public final String k()
  {
    return this.a.getPackageName();
  }

  public final String l()
  {
    String str = this.a.getApplicationInfo().name;
    if (str != null)
      return str;
    int i = this.a.getApplicationInfo().labelRes;
    if (i > 0)
      return this.a.getString(i);
    return String.valueOf(this.a.getApplicationInfo().nonLocalizedLabel);
  }

  public final int m()
  {
    try
    {
      int i = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionCode;
      return i;
    }
    catch (Throwable localThrowable)
    {
      e.a().d(localThrowable);
    }
    return 0;
  }

  public final String n()
  {
    try
    {
      String str = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionName;
      return str;
    }
    catch (Throwable localThrowable)
    {
      e.a().d(localThrowable);
    }
    return "1.0";
  }

  // ERROR //
  public final String o()
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 600
    //   4: invokespecial 194	com/mob/tools/b/a:b	(Ljava/lang/String;)Z
    //   7: istore 8
    //   9: iload 8
    //   11: istore_3
    //   12: iload_3
    //   13: ifeq +107 -> 120
    //   16: aload_0
    //   17: ldc_w 352
    //   20: invokespecial 188	com/mob/tools/b/a:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   23: checkcast 354	android/app/ActivityManager
    //   26: astore 6
    //   28: aload 6
    //   30: ifnonnull +19 -> 49
    //   33: aconst_null
    //   34: areturn
    //   35: astore_1
    //   36: invokestatic 37	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   39: aload_1
    //   40: invokevirtual 43	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   43: pop
    //   44: iconst_0
    //   45: istore_3
    //   46: goto -34 -> 12
    //   49: getstatic 129	android/os/Build$VERSION:SDK_INT	I
    //   52: bipush 20
    //   54: if_icmpgt +25 -> 79
    //   57: aload 6
    //   59: iconst_1
    //   60: invokevirtual 603	android/app/ActivityManager:getRunningTasks	(I)Ljava/util/List;
    //   63: iconst_0
    //   64: invokeinterface 606 2 0
    //   69: checkcast 608	android/app/ActivityManager$RunningTaskInfo
    //   72: getfield 612	android/app/ActivityManager$RunningTaskInfo:topActivity	Landroid/content/ComponentName;
    //   75: invokevirtual 615	android/content/ComponentName:getPackageName	()Ljava/lang/String;
    //   78: areturn
    //   79: aload 6
    //   81: invokevirtual 358	android/app/ActivityManager:getRunningAppProcesses	()Ljava/util/List;
    //   84: iconst_0
    //   85: invokeinterface 606 2 0
    //   90: checkcast 360	android/app/ActivityManager$RunningAppProcessInfo
    //   93: getfield 366	android/app/ActivityManager$RunningAppProcessInfo:processName	Ljava/lang/String;
    //   96: ldc_w 519
    //   99: invokevirtual 619	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   102: iconst_0
    //   103: aaload
    //   104: astore 7
    //   106: aload 7
    //   108: areturn
    //   109: astore 4
    //   111: invokestatic 37	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   114: aload 4
    //   116: invokevirtual 43	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   119: pop
    //   120: aconst_null
    //   121: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	35	java/lang/Throwable
    //   16	28	109	java/lang/Throwable
    //   49	79	109	java/lang/Throwable
    //   79	106	109	java/lang/Throwable
  }

  public final String q()
  {
    String str = Settings.Secure.getString(this.a.getContentResolver(), "android_id");
    e.a().i("getAndroidID === " + str, new Object[0]);
    return str;
  }

  public final String r()
  {
    try
    {
      Intent localIntent = new Intent("com.google.android.gms.ads.identifier.service.START");
      localIntent.setPackage("com.google.android.gms");
      b localb = new b(this, 0);
      this.a.bindService(localIntent, localb, 1);
      IBinder localIBinder = localb.a();
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      localIBinder.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      localParcel2.recycle();
      localParcel1.recycle();
      e.a().i("getAdvertisingID === " + str, new Object[0]);
      return str;
    }
    catch (Throwable localThrowable)
    {
      e.a().d(localThrowable);
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.b.a
 * JD-Core Version:    0.6.0
 */