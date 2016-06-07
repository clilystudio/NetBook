package com.alipay.sdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public final class a
{
  private static a d = null;
  private String a;
  private String b;
  private String c;

  private a(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      a(localTelephonyManager.getDeviceId());
      String str = localTelephonyManager.getSubscriberId();
      if (str != null)
        str = (str + "000000000000000").substring(0, 15);
      this.a = str;
      this.c = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      return;
    }
    catch (Exception localException)
    {
      return;
    }
    finally
    {
      if (TextUtils.isEmpty(this.c))
        this.c = "00:00:00:00:00:00";
    }
    throw localObject;
  }

  public static a a(Context paramContext)
  {
    if (d == null)
      d = new a(paramContext);
    return d;
  }

  private void a(String paramString)
  {
    if (paramString != null)
    {
      byte[] arrayOfByte = paramString.getBytes();
      for (int i = 0; i < arrayOfByte.length; i++)
      {
        if ((arrayOfByte[i] >= 48) && (arrayOfByte[i] <= 57))
          continue;
        arrayOfByte[i] = 48;
      }
      String str = new String(arrayOfByte);
      paramString = (str + "000000000000000").substring(0, 15);
    }
    this.b = paramString;
  }

  public static g b(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    try
    {
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 0))
        return g.a(localNetworkInfo.getSubtype());
      if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 1))
        return g.a;
      g localg = g.o;
      return localg;
    }
    catch (Exception localException)
    {
    }
    return g.o;
  }

  public static String c(Context paramContext)
  {
    a locala = a(paramContext);
    String str1 = locala.b();
    String str2 = str1 + "|";
    String str3 = locala.a();
    if (TextUtils.isEmpty(str3));
    for (String str4 = str2 + "000000000000000"; ; str4 = str2 + str3)
      return str4.substring(0, 8);
  }

  public final String a()
  {
    if (TextUtils.isEmpty(this.a))
      this.a = "000000000000000";
    return this.a;
  }

  public final String b()
  {
    if (TextUtils.isEmpty(this.b))
      this.b = "000000000000000";
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.util.a
 * JD-Core Version:    0.6.0
 */