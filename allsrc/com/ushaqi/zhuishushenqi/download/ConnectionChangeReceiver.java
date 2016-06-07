package com.ushaqi.zhuishushenqi.download;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.util.Set;

public class ConnectionChangeReceiver extends BroadcastReceiver
{
  @TargetApi(11)
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    String str1;
    String str2;
    String str3;
    String str4;
    if (localConnectivityManager != null)
    {
      NetworkInfo localNetworkInfo = localConnectivityManager.getNetworkInfo(1);
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
      {
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("downloadInfo", 0);
        str1 = localSharedPreferences.getString("apkName", "");
        str2 = localSharedPreferences.getString("apkUrl", "");
        str3 = localSharedPreferences.getString("iconUrl", "");
        str4 = localSharedPreferences.getString("packageName", "");
        Set localSet = localSharedPreferences.getStringSet("downloadedPackage", null);
        if ((localSet == null) || (!localSet.contains(str4)))
          break label168;
      }
    }
    label168: for (int i = 1; ; i = 0)
    {
      if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)) && (i == 0))
        new a(paramContext, str1, str2, str3, str4).a();
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.download.ConnectionChangeReceiver
 * JD-Core Version:    0.6.0
 */