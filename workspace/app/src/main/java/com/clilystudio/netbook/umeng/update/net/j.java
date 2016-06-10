package com.clilystudio.netbook.umeng.update.net;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import u.a.b;

final class j
  implements ServiceConnection
{
  j(i parami)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    b.c(i.b(), "ServiceConnection.onServiceConnected");
    i.a(this.a, new Messenger(paramIBinder));
    try
    {
      Message localMessage = Message.obtain(null, 4);
      k localk = new k(i.a(this.a), i.b(this.a), i.c(this.a));
      localk.d = i.d(this.a);
      localk.e = i.e(this.a);
      localk.f = i.f(this.a);
      localk.g = i.g(this.a);
      localk.h = i.h(this.a);
      localk.i = i.i(this.a);
      Bundle localBundle = new Bundle();
      localBundle.putString("mComponentName", localk.a);
      localBundle.putString("mTitle", localk.b);
      localBundle.putString("mUrl", localk.c);
      localBundle.putString("mMd5", localk.d);
      localBundle.putString("mTargetMd5", localk.e);
      localBundle.putStringArray("reporturls", localk.f);
      localBundle.putBoolean("rich_notification", localk.g);
      localBundle.putBoolean("mSilent", localk.h);
      localBundle.putBoolean("mWifiOnly", localk.i);
      localMessage.setData(localBundle);
      localMessage.replyTo = this.a.a;
      i.j(this.a).send(localMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    b.c(i.b(), "ServiceConnection.onServiceDisconnected");
    i.a(this.a, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.net.j
 * JD-Core Version:    0.6.0
 */