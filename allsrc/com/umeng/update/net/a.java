package com.umeng.update.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.umeng.update.util.DeltaUpdate;
import java.io.File;

final class a extends Handler
{
  a(DownloadingService paramDownloadingService)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 5:
      k localk2 = (k)paramMessage.obj;
      int j = paramMessage.arg2;
      while (true)
      {
        PendingIntent localPendingIntent2;
        try
        {
          String str4 = paramMessage.getData().getString("filename");
          w.a(str4, 39);
          u.a.b.c(DownloadingService.a(), "Cancel old notification....");
          Intent localIntent = new Intent("android.intent.action.VIEW");
          localIntent.addFlags(268435456);
          localIntent.setDataAndType(Uri.fromFile(new File(str4)), "application/vnd.android.package-archive");
          localPendingIntent2 = PendingIntent.getActivity(DownloadingService.b(this.a), 0, localIntent, 134217728);
          if (localk2.h)
          {
            Notification localNotification2 = new Notification(17301634, DownloadingService.b(this.a).getString(com.alipay.sdk.b.b.k(DownloadingService.b(this.a))), System.currentTimeMillis());
            localNotification2.setLatestEventInfo(DownloadingService.b(this.a), localk2.b, DownloadingService.b(this.a).getString(com.alipay.sdk.b.b.k(DownloadingService.b(this.a))), localPendingIntent2);
            localObject = localNotification2;
            ((Notification)localObject).flags = 16;
            DownloadingService.a(this.a, (NotificationManager)this.a.getSystemService("notification"));
            DownloadingService.c(this.a).notify(j + 1, (Notification)localObject);
            u.a.b.c(DownloadingService.a(), "Show new  notification....");
            DownloadingService.a(this.a);
            boolean bool = p.a(DownloadingService.b(this.a));
            String str5 = DownloadingService.a();
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = Boolean.valueOf(bool);
            u.a.b.c(str5, String.format("isAppOnForeground = %1$B", arrayOfObject1));
            if ((!bool) || (localk2.h))
              continue;
            DownloadingService.c(this.a).cancel(j + 1);
            DownloadingService.b(this.a).startActivity(localIntent);
            String str6 = DownloadingService.a();
            Object[] arrayOfObject2 = new Object[2];
            arrayOfObject2[0] = localk2.b;
            arrayOfObject2[1] = str4;
            u.a.b.a(str6, String.format("%1$10s downloaded. Saved to: %2$s", arrayOfObject2));
            return;
          }
        }
        catch (Exception localException)
        {
          u.a.b.b(DownloadingService.a(), "can not install. " + localException.getMessage());
          DownloadingService.c(this.a).cancel(j + 1);
          return;
        }
        Notification localNotification3 = new Notification(17301634, DownloadingService.b(this.a).getString(com.alipay.sdk.b.b.i(DownloadingService.b(this.a))), System.currentTimeMillis());
        localNotification3.setLatestEventInfo(DownloadingService.b(this.a), localk2.b, DownloadingService.b(this.a).getString(com.alipay.sdk.b.b.i(DownloadingService.b(this.a))), localPendingIntent2);
        Object localObject = localNotification3;
      }
    case 6:
    }
    k localk1 = (k)paramMessage.obj;
    int i = paramMessage.arg2;
    String str1 = paramMessage.getData().getString("filename");
    DownloadingService.c(this.a).cancel(i);
    Notification localNotification1 = new Notification(17301633, DownloadingService.b(this.a).getString(com.alipay.sdk.b.b.l(DownloadingService.b(this.a))), System.currentTimeMillis());
    PendingIntent localPendingIntent1 = PendingIntent.getActivity(DownloadingService.b(this.a), 0, new Intent(), 134217728);
    localNotification1.setLatestEventInfo(DownloadingService.b(this.a), u.a.a.h(DownloadingService.b(this.a)), DownloadingService.b(this.a).getString(com.alipay.sdk.b.b.l(DownloadingService.b(this.a))), localPendingIntent1);
    DownloadingService.c(this.a).notify(i + 1, localNotification1);
    String str2 = str1.replace(".patch", ".apk");
    String str3 = DeltaUpdate.a(this.a);
    p localp = DownloadingService.a(this.a);
    localp.getClass();
    new t(localp, DownloadingService.b(this.a), i, localk1, str2).execute(new String[] { str3, str2, str1 });
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.net.a
 * JD-Core Version:    0.6.0
 */