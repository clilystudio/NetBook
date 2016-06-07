package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.a.a.a.b;
import java.net.InetAddress;
import java.net.UnknownHostException;

final class Q
  implements Runnable
{
  public final void run()
  {
    String str = P.b();
    if (!TextUtils.isEmpty(str))
    {
      b.a("Network Checkup: get gateway:" + str);
      P.a(str);
    }
    try
    {
      while (true)
      {
        InetAddress localInetAddress = InetAddress.getByName("www.baidu.com");
        b.a("Network Checkup: get address for www.baidu.com:" + localInetAddress.getAddress());
        P.a(localInetAddress.getHostAddress());
        return;
        b.a("Network Checkup: cannot get gateway");
      }
    }
    catch (UnknownHostException localUnknownHostException)
    {
      b.a("Network Checkup: cannot resolve the host www.baidu.com");
      return;
    }
    catch (Throwable localThrowable)
    {
      b.a("the checkup failure." + localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.Q
 * JD-Core Version:    0.6.0
 */