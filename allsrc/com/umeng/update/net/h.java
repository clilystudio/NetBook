package com.umeng.update.net;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import android.widget.Toast;
import java.util.Map;
import u.a.a;

final class h extends Handler
{
  h(DownloadingService paramDownloadingService)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    u.a.b.c(DownloadingService.a(), "IncomingHandler(msg.what:" + paramMessage.what + " msg.arg1:" + paramMessage.arg1 + " msg.arg2:" + paramMessage.arg2 + " msg.replyTo:" + paramMessage.replyTo);
    switch (paramMessage.what)
    {
    default:
      super.handleMessage(paramMessage);
      return;
    case 4:
    }
    Bundle localBundle = paramMessage.getData();
    u.a.b.c(DownloadingService.a(), "IncomingHandler(msg.getData():" + localBundle);
    k localk = new k(localBundle.getString("mComponentName"), localBundle.getString("mTitle"), localBundle.getString("mUrl"));
    localk.d = localBundle.getString("mMd5");
    localk.e = localBundle.getString("mTargetMd5");
    localk.f = localBundle.getStringArray("reporturls");
    localk.g = localBundle.getBoolean("rich_notification");
    localk.h = localBundle.getBoolean("mSilent");
    localk.i = localBundle.getBoolean("mWifiOnly");
    if (DownloadingService.a(this.a).a(localk, DownloadingService.b, paramMessage.replyTo))
    {
      u.a.b.a(DownloadingService.a(), localk.b + " is already in downloading list. ");
      int i = DownloadingService.a(this.a).b(localk);
      if ((i != -1) && (((s)DownloadingService.b().get(i)).a == null))
      {
        String str = b.b(i, "continue");
        Intent localIntent = new Intent(DownloadingService.b(this.a), DownloadingService.class);
        localIntent.putExtra("com.umeng.broadcast.download.msg", str);
        DownloadingService.a(this.a).a(this.a, localIntent);
        return;
      }
      Toast.makeText(DownloadingService.b(this.a), com.alipay.sdk.b.b.e(DownloadingService.b(this.a)), 0).show();
      Message localMessage3 = Message.obtain();
      localMessage3.what = 2;
      localMessage3.arg1 = 2;
      localMessage3.arg2 = 0;
      try
      {
        paramMessage.replyTo.send(localMessage3);
        return;
      }
      catch (RemoteException localRemoteException3)
      {
        localRemoteException3.printStackTrace();
        return;
      }
    }
    if (a.d(this.a.getApplicationContext()))
    {
      DownloadingService.c().put(localk, paramMessage.replyTo);
      Message localMessage2 = Message.obtain();
      localMessage2.what = 1;
      localMessage2.arg1 = 1;
      localMessage2.arg2 = 0;
      try
      {
        paramMessage.replyTo.send(localMessage2);
        DownloadingService.a(this.a, localk);
        return;
      }
      catch (RemoteException localRemoteException2)
      {
        while (true)
          localRemoteException2.printStackTrace();
      }
    }
    Toast.makeText(DownloadingService.b(this.a), com.alipay.sdk.b.b.d(DownloadingService.b(this.a)), 0).show();
    Message localMessage1 = Message.obtain();
    localMessage1.what = 2;
    localMessage1.arg1 = 4;
    localMessage1.arg2 = 0;
    try
    {
      paramMessage.replyTo.send(localMessage1);
      return;
    }
    catch (RemoteException localRemoteException1)
    {
      localRemoteException1.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.update.net.h
 * JD-Core Version:    0.6.0
 */