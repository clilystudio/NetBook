package com.clilystudio.netbook.event;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.clilystudio.netbook.download.e;
import java.util.HashSet;
import java.util.Set;

public class AppInstalledReceiver extends BroadcastReceiver
{
  @TargetApi(11)
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getDataString();
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("downloadInfo", 0);
    String[] arrayOfString = str1.split(":");
    if ((str1 != null) && (arrayOfString.length == 2) && (localSharedPreferences.getString("packageName", "").equals(arrayOfString[1])))
    {
      String str2 = localSharedPreferences.getString("apkName", "");
      e.b(paramContext, localSharedPreferences.getString("apkSavePath", ""), str2);
      Set localSet = localSharedPreferences.getStringSet("uninstallShortcut", new HashSet());
      SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("downloadInfo", 0).edit();
      localSet.add(localSharedPreferences.getString("packageName", ""));
      localEditor.apply();
      return;
    }
    paramContext.sendBroadcast(new Intent("update_game_item_status"));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.event.AppInstalledReceiver
 * JD-Core Version:    0.6.0
 */