package com.iflytek.common.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.iflytek.common.LaunchService;
import com.iflytek.common.c.e;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

public class c
{
  private static d a = null;
  private static int b = -1;

  public static void a(Context paramContext)
  {
    monitorenter;
    try
    {
      com.iflytek.common.c.c.a(paramContext, "============start=============");
      d locald = d.a(paramContext);
      a = locald;
      locald.a();
      if (a.b())
      {
        a.a(System.currentTimeMillis());
        e.a.execute(new f(paramContext));
      }
      d(paramContext);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static void a(Context paramContext, ResolveInfo paramResolveInfo)
  {
    try
    {
      String str = paramResolveInfo.serviceInfo.packageName;
      if (!a.a(str))
      {
        com.iflytek.common.c.c.a("LaunchImpl", "startService not need:" + str);
        return;
      }
      if (!paramContext.getPackageName().equals(str))
      {
        Intent localIntent = new Intent("com.iflytek.common.ACTION_LAUNCH");
        localIntent.setPackage(str);
        ComponentName localComponentName = paramContext.startService(localIntent);
        com.iflytek.common.c.c.a(paramContext, "start app:" + localComponentName);
        return;
      }
    }
    catch (Exception localException)
    {
      com.iflytek.common.c.c.b("LaunchImpl", "", localException);
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      if (a == null)
        a = d.a(paramContext);
      a.a(paramString1, paramString2);
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private static void c(Context paramContext)
  {
    Iterator localIterator;
    try
    {
      List localList2 = paramContext.getPackageManager().queryIntentServices(new Intent("com.iflytek.common.ACTION_LAUNCH"), 224);
      localList1 = localList2;
      if (localList1 == null)
      {
        com.iflytek.common.c.c.b("LaunchImpl", "query action null");
        return;
      }
    }
    catch (Exception localException)
    {
      List localList1;
      while (true)
      {
        com.iflytek.common.c.c.b("LaunchImpl", "", localException);
        localList1 = null;
      }
      localIterator = localList1.iterator();
    }
    while (localIterator.hasNext())
      a(paramContext, (ResolveInfo)localIterator.next());
  }

  private static void d(Context paramContext)
  {
    if (b == 0);
    while (true)
    {
      return;
      try
      {
        Intent localIntent = new Intent();
        localIntent.setClass(paramContext, LaunchService.class);
        if (paramContext.startService(localIntent) == null)
          continue;
        b = 1;
        return;
      }
      catch (Exception localException)
      {
        b = 0;
        com.iflytek.common.c.c.b("LaunchImpl", "start self Service error");
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.a.c
 * JD-Core Version:    0.6.0
 */