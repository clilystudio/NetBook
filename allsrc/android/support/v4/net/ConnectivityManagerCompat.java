package android.support.v4.net;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;

public class ConnectivityManagerCompat
{
  private static final ConnectivityManagerCompat.ConnectivityManagerCompatImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new ConnectivityManagerCompat.JellyBeanConnectivityManagerCompatImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 13)
    {
      IMPL = new ConnectivityManagerCompat.HoneycombMR2ConnectivityManagerCompatImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      IMPL = new ConnectivityManagerCompat.GingerbreadConnectivityManagerCompatImpl();
      return;
    }
    IMPL = new ConnectivityManagerCompat.BaseConnectivityManagerCompatImpl();
  }

  public static NetworkInfo getNetworkInfoFromBroadcast(ConnectivityManager paramConnectivityManager, Intent paramIntent)
  {
    NetworkInfo localNetworkInfo = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
    if (localNetworkInfo != null)
      return paramConnectivityManager.getNetworkInfo(localNetworkInfo.getType());
    return null;
  }

  public static boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
  {
    return IMPL.isActiveNetworkMetered(paramConnectivityManager);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.net.ConnectivityManagerCompat
 * JD-Core Version:    0.6.0
 */