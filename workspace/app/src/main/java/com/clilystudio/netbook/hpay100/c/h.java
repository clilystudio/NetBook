package com.clilystudio.netbook.hpay100.c;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class h
{
  private static int a = -1;
  private static int b = 0;
  private static String[] c = { "com.tencent.qqpimsecure", "com.qihoo360.mobilesafe_mtk6573", "com.lbe.security:service", "com.qihoo360.mobilesafe:GuardService", "com.mobileann.MobileAnn", "com.ijinshan.duba:DefendService", "com.lbe.security.miui", "com.qihoo360.mobilesafe_lenovo", "com.qihoo.antivirus:server", "com.lenovo.safecenter" };

  public static int a()
  {
    if (a == 1)
      return 1;
    if (a == 0)
      return 0;
    String[] arrayOfString = { "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/" };
    for (int i = 0; ; i++)
    {
      if (i >= 5);
      while (true)
      {
        a = 0;
        return 0;
        try
        {
          if (!new File(arrayOfString[i] + "su").exists())
            break;
          a = 1;
          return 1;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }
  }

  public static void a(Context paramContext)
  {
    Thread localThread = new Thread(new i(paramContext));
    localThread.setName("thread_setsaftsoft");
    localThread.start();
  }

  public static int b()
  {
    return b;
  }

  private static List d()
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    try
    {
      while (true)
      {
        if (i >= c.length)
          return localArrayList;
        localArrayList.add(c[i]);
        i++;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localArrayList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.c.h
 * JD-Core Version:    0.6.0
 */