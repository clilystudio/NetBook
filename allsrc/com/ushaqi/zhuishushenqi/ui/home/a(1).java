package com.ushaqi.zhuishushenqi.ui.home;

import android.annotation.TargetApi;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.ushaqi.zhuishushenqi.download.e;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

final class a
  implements Runnable
{
  a(HomeActivity paramHomeActivity)
  {
  }

  @TargetApi(11)
  public final void run()
  {
    int i = 1;
    long l = com.arcsoft.hpay100.a.a.c(this.a, "PREF_FIRST_LAUNCH_TIME", 0L);
    int j;
    String str1;
    SharedPreferences localSharedPreferences;
    Set localSet1;
    int k;
    if (Calendar.getInstance().getTimeInMillis() - l >= 604800000L)
    {
      j = i;
      if (j != 0)
      {
        com.ushaqi.zhuishushenqi.download.a locala = com.arcsoft.hpay100.a.a.I(this.a);
        if (locala != null)
        {
          locala.a();
          str1 = locala.b();
          localSharedPreferences = this.a.getSharedPreferences("downloadInfo", 0);
          localSet1 = localSharedPreferences.getStringSet("uninstallShortcut", new HashSet());
          if ((localSet1 == null) || (!localSet1.contains(str1)))
            break label240;
          k = i;
          label112: Set localSet2 = localSharedPreferences.getStringSet("downloadedPackage", null);
          if ((localSet2 == null) || (!localSet2.contains(str1)))
            break label246;
        }
      }
    }
    while (true)
    {
      if ((i != 0) && (k == 0))
      {
        String str2 = localSharedPreferences.getString("apkName", "");
        String str3 = localSharedPreferences.getString("apkSavePath", "");
        e.b(this.a, str3, str2);
        SharedPreferences.Editor localEditor = this.a.getSharedPreferences("downloadInfo", 0).edit();
        localSet1.add(str1);
        localEditor.putStringSet("uninstallShortcut", localSet1);
        localEditor.apply();
      }
      return;
      j = 0;
      break;
      label240: k = 0;
      break label112;
      label246: i = 0;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.a
 * JD-Core Version:    0.6.0
 */