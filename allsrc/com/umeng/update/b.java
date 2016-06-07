package com.umeng.update;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.support.design.widget.K;
import com.umeng.update.net.w;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;

public final class b
{
  private static K a = null;
  private static a b = null;
  private static K c = null;
  private static Context d;
  private static o e = new o();
  private static Handler f;

  private static File a(Context paramContext, UpdateResponse paramUpdateResponse)
  {
    String str = paramUpdateResponse.new_md5 + ".apk";
    try
    {
      File localFile = new File(w.a("/apk", paramContext, new boolean[1]), str);
      if (localFile.exists())
      {
        boolean bool = paramUpdateResponse.new_md5.equalsIgnoreCase(u.a.g.a(localFile));
        if (bool)
          return localFile;
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    return null;
  }

  static void a(int paramInt, Context paramContext, UpdateResponse paramUpdateResponse, File paramFile)
  {
    switch (paramInt)
    {
    case 6:
    default:
    case 5:
    case 7:
    }
    while (true)
    {
      if (b != null)
        b.a(paramInt);
      return;
      if (paramFile == null)
      {
        b(paramContext, paramUpdateResponse);
        continue;
      }
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(268435456);
      localIntent.setDataAndType(Uri.fromFile(paramFile), "application/vnd.android.package-archive");
      paramContext.startActivity(localIntent);
      continue;
      k.a(paramContext, paramUpdateResponse.new_md5);
    }
  }

  public static void a(Context paramContext)
  {
    k.a(false);
    k.b(false);
    Context localContext = paramContext.getApplicationContext();
    if (localContext == null);
    try
    {
      u.a.b.b("update", "unexpected null context in update");
      return;
      f = new c(localContext.getMainLooper());
      c(localContext);
      if (u.a.a.c(localContext))
        break label91;
      if (k.e())
      {
        b(2, null);
        return;
      }
    }
    catch (Exception localException)
    {
      u.a.b.b("update", "Exception occurred in Mobclick.update(). ", localException);
      return;
    }
    if ((k.a()) && (!k.c()))
    {
      b(2, null);
      return;
    }
    label91: if (e.a())
    {
      b(4, null);
      u.a.b.a("update", "Is updating now.");
      f.post(new d(localContext));
      return;
    }
    d = localContext;
    new Thread(new j(localContext.getApplicationContext())).start();
  }

  public static void a(a parama)
  {
    b = parama;
  }

  private static void b(int paramInt, UpdateResponse paramUpdateResponse)
  {
    Message localMessage = new Message();
    localMessage.what = paramInt;
    localMessage.obj = paramUpdateResponse;
    f.sendMessage(localMessage);
  }

  private static void b(Context paramContext, UpdateResponse paramUpdateResponse)
  {
    if ((paramUpdateResponse.delta) && (k.d()))
    {
      e.a(paramContext, paramUpdateResponse.origin, paramUpdateResponse.new_md5, paramUpdateResponse.path, paramUpdateResponse.patch_md5, null);
      e.b();
      return;
    }
    e.a(paramContext, paramUpdateResponse.path, paramUpdateResponse.new_md5, null, null, null);
    e.c();
  }

  private static boolean c(Context paramContext)
  {
    if (!k.g())
      return true;
    while (true)
    {
      int j;
      try
      {
        while (true)
        {
          boolean bool1 = Class.forName(paramContext.getPackageName() + ".BuildConfig").getField("DEBUG").getBoolean(null);
          if (!bool1)
            break;
          try
          {
            if (k.a(paramContext) == null)
            {
              f.post(new e(paramContext));
              return false;
            }
            localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 4101);
            ActivityInfo[] arrayOfActivityInfo = localPackageInfo.activities;
            if (arrayOfActivityInfo == null)
              break label537;
            i3 = 0;
            i = 0;
          }
          catch (Exception localException2)
          {
            try
            {
              PackageInfo localPackageInfo;
              while (true)
              {
                int i3;
                if (i3 >= localPackageInfo.activities.length)
                {
                  if (i != 0)
                    break;
                  f.post(new f(paramContext));
                  return false;
                }
                boolean bool5 = "com.umeng.update.UpdateDialogActivity".equals(localPackageInfo.activities[i3].name);
                if (bool5)
                  i = 1;
                i3++;
              }
              ServiceInfo[] arrayOfServiceInfo = localPackageInfo.services;
              if (arrayOfServiceInfo == null)
                break label531;
              int i2 = 0;
              i = 0;
              while (true)
              {
                if (i2 >= localPackageInfo.services.length)
                {
                  if (i != 0)
                    break;
                  f.post(new g(paramContext));
                  return false;
                }
                boolean bool4 = "com.umeng.update.net.DownloadingService".equals(localPackageInfo.services[i2].name);
                if (bool4)
                  i = 1;
                i2++;
              }
              if (localPackageInfo.requestedPermissions == null)
                break label519;
              j = 0;
              k = 0;
              m = 0;
              n = 0;
              int i1 = localPackageInfo.requestedPermissions.length;
              if (j >= i1)
                if ((n == 0) || (m == 0) || (k == 0))
                  break label405;
              label405: for (i = 1; i == 0; i = 0)
              {
                f.post(new h(paramContext));
                return false;
                if ("android.permission.WRITE_EXTERNAL_STORAGE".equals(localPackageInfo.requestedPermissions[j]))
                {
                  n = 1;
                  break label543;
                }
                if ("android.permission.ACCESS_NETWORK_STATE".equals(localPackageInfo.requestedPermissions[j]))
                {
                  m = 1;
                  break label543;
                }
                boolean bool2 = "android.permission.INTERNET".equals(localPackageInfo.requestedPermissions[j]);
                if (!bool2)
                  break label543;
                k = 1;
                break label543;
              }
              while (true)
              {
                try
                {
                  boolean bool3 = "2.4.2.20140520".equals(paramContext.getString(Class.forName(paramContext.getPackageName() + ".R$string").getField("UMUpdateCheck").getInt(null)));
                  if (!bool3)
                    break label513;
                  i = 1;
                  if (i != 0)
                    break;
                  f.post(new i(paramContext));
                  label487: return i;
                }
                catch (Exception localException4)
                {
                  i = 0;
                  continue;
                }
                localException2 = localException2;
                i = 0;
              }
            }
            catch (Exception localException3)
            {
              break label487;
            }
          }
        }
      }
      catch (Exception localException1)
      {
        return true;
      }
      label513: int i = 0;
      continue;
      label519: int k = 0;
      int m = 0;
      int n = 0;
      continue;
      label531: i = 0;
      continue;
      label537: i = 0;
      continue;
      label543: j++;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.b
 * JD-Core Version:    0.6.0
 */