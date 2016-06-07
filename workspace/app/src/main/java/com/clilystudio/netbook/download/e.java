package com.clilystudio.netbook.download;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import java.io.File;

public final class e
{
  public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "Android/data/com.manhuadao.download/file/";
  public static final String b = Environment.getExternalStorageDirectory() + File.separator + "Android/data/com.manhuadao.download/shortcut.png";

  public static Boolean a(String paramString1, String paramString2)
  {
    try
    {
      if (!new File(paramString1, paramString2).exists())
      {
        Boolean localBoolean = Boolean.valueOf(false);
        return localBoolean;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    File localFile = new File(paramString1, paramString2);
    if (!localFile.exists())
      return;
    Intent localIntent1 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
    localIntent1.putExtra("duplicate", false);
    localIntent1.putExtra("android.intent.extra.shortcut.NAME", paramString2);
    localIntent1.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeFile(b));
    Intent localIntent2 = new Intent("android.intent.action.VIEW");
    localIntent2.setDataAndType(Uri.parse("file://" + localFile.toString()), "application/vnd.android.package-archive");
    localIntent1.putExtra("android.intent.extra.shortcut.INTENT", localIntent2);
    paramContext.sendBroadcast(localIntent1);
  }

  public static boolean a(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null)
      return false;
    try
    {
      int i = localConnectivityManager.getActiveNetworkInfo().getType();
      return i == 1;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public static boolean a(Context paramContext, String paramString)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramString, 0);
      int i = 0;
      if (localPackageInfo != null)
        i = 1;
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return false;
  }

  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    File localFile = new File(paramString1, paramString2);
    if (!localFile.exists())
      return;
    Intent localIntent1 = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
    localIntent1.putExtra("duplicate", false);
    localIntent1.putExtra("android.intent.extra.shortcut.NAME", paramString2);
    localIntent1.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeFile(b));
    Intent localIntent2 = new Intent("android.intent.action.VIEW");
    localIntent2.setDataAndType(Uri.parse("file://" + localFile.toString()), "application/vnd.android.package-archive");
    localIntent1.putExtra("android.intent.extra.shortcut.INTENT", localIntent2);
    paramContext.sendBroadcast(localIntent1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.download.e
 * JD-Core Version:    0.6.0
 */