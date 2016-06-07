package com.ximalaya.ting.android.opensdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public class NetworkType
{
  public static NetworkType.NetWorkType getNetWorkType(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    NetworkType.NetWorkType localNetWorkType = NetworkType.NetWorkType.NETWORKTYPE_INVALID;
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
    {
      String str = localNetworkInfo.getTypeName();
      if (str.equalsIgnoreCase("WIFI"))
        localNetWorkType = NetworkType.NetWorkType.NETWORKTYPE_WIFI;
      do
        return localNetWorkType;
      while (!str.equalsIgnoreCase("MOBILE"));
      if (TextUtils.isEmpty(Proxy.getDefaultHost()))
      {
        if (isFastMobileNetwork(paramContext))
          return NetworkType.NetWorkType.NETWORKTYPE_3G;
        return NetworkType.NetWorkType.NETWORKTYPE_2G;
      }
      return NetworkType.NetWorkType.NETWORKTYPE_WAP;
    }
    return NetworkType.NetWorkType.NETWORKTYPE_INVALID;
  }

  private static boolean isFastMobileNetwork(Context paramContext)
  {
    switch (((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType())
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.util.NetworkType
 * JD-Core Version:    0.6.0
 */