package com.umeng.update.net;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import java.util.Map;

public class b
  implements e
{
  private SparseArray<Long> a = new SparseArray();

  b(DownloadingService paramDownloadingService)
  {
  }

  public static PendingIntent a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, DownloadingService.class);
    localIntent.putExtra("com.umeng.broadcast.download.msg", paramString);
    return PendingIntent.getService(paramContext, paramString.hashCode(), localIntent, 134217728);
  }

  public static String b(int paramInt, String paramString)
  {
    if (paramInt == 0)
      return null;
    StringBuilder localStringBuilder = new StringBuilder(paramInt);
    localStringBuilder.append(":");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }

  public final void a(int paramInt)
  {
    if (DownloadingService.b().indexOfKey(paramInt) >= 0)
    {
      s locals = (s)DownloadingService.b().get(paramInt);
      long[] arrayOfLong = locals.e;
      int i = 0;
      if (arrayOfLong != null)
      {
        boolean bool = arrayOfLong[1] < 0L;
        i = 0;
        if (bool)
        {
          i = (int)(100.0F * ((float)arrayOfLong[0] / (float)arrayOfLong[1]));
          if (i > 100)
            i = 99;
        }
      }
      if (!locals.d.h)
      {
        this.a.put(paramInt, Long.valueOf(-1L));
        r localr = DownloadingService.a(this.b).a(this.b, locals.d, paramInt, i);
        locals.b = localr;
        DownloadingService.c(this.b).notify(paramInt, localr.d());
      }
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    if (DownloadingService.b().indexOfKey(paramInt1) >= 0)
    {
      s locals = (s)DownloadingService.b().get(paramInt1);
      k localk = locals.d;
      long l = System.currentTimeMillis();
      if ((!localk.h) && (l - ((Long)this.a.get(paramInt1)).longValue() > 500L))
      {
        this.a.put(paramInt1, Long.valueOf(l));
        r localr = locals.b;
        localr.a(100, paramInt2, false).a(String.valueOf(paramInt2) + "%");
        DownloadingService.c(this.b).notify(paramInt1, localr.d());
      }
      String str = DownloadingService.a();
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      arrayOfObject[2] = localk.b;
      u.a.b.c(str, String.format("%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s", arrayOfObject));
    }
  }

  public final void a(int paramInt, String paramString)
  {
    k localk;
    Bundle localBundle;
    if (DownloadingService.b().indexOfKey(paramInt) >= 0)
    {
      s locals = (s)DownloadingService.b().get(paramInt);
      if (locals != null)
      {
        localk = locals.d;
        m.a(DownloadingService.b(this.b)).a(localk.a, localk.c, 100);
        localBundle = new Bundle();
        localBundle.putString("filename", paramString);
        if (!localk.a.equalsIgnoreCase("delta_update"))
          break label138;
        Message localMessage3 = Message.obtain();
        localMessage3.what = 6;
        localMessage3.arg1 = 1;
        localMessage3.obj = localk;
        localMessage3.arg2 = paramInt;
        localMessage3.setData(localBundle);
        DownloadingService.d(this.b).sendMessage(localMessage3);
      }
    }
    return;
    label138: Message localMessage1 = Message.obtain();
    localMessage1.what = 5;
    localMessage1.arg1 = 1;
    localMessage1.obj = localk;
    localMessage1.arg2 = paramInt;
    localMessage1.setData(localBundle);
    DownloadingService.d(this.b).sendMessage(localMessage1);
    Message localMessage2 = Message.obtain();
    localMessage2.what = 5;
    localMessage2.arg1 = 1;
    localMessage2.arg2 = paramInt;
    localMessage2.setData(localBundle);
    try
    {
      if (DownloadingService.c().get(localk) != null)
        ((Messenger)DownloadingService.c().get(localk)).send(localMessage2);
      DownloadingService.a(this.b).a(DownloadingService.b(this.b), paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      DownloadingService.a(this.b).a(DownloadingService.b(this.b), paramInt);
    }
  }

  public final void b(int paramInt)
  {
    if (DownloadingService.b().indexOfKey(paramInt) >= 0)
      DownloadingService.a(this.b).a(DownloadingService.b(this.b), paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.net.b
 * JD-Core Version:    0.6.0
 */