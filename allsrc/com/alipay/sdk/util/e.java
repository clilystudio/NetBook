package com.alipay.sdk.util;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.alipay.android.app.IAlixPay.Stub;

final class e
  implements ServiceConnection
{
  e(d paramd)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (d.a(this.a))
    {
      d.a(this.a, IAlixPay.Stub.asInterface(paramIBinder));
      d.a(this.a).notify();
      return;
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    d.a(this.a, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.util.e
 * JD-Core Version:    0.6.0
 */