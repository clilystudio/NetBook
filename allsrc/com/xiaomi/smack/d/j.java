package com.xiaomi.smack.d;

import com.xiaomi.a.a.b.d;
import com.xiaomi.push.service.XMPushService;
import java.util.ArrayList;
import java.util.List;

final class j extends d
{
  j(XMPushService paramXMPushService)
  {
  }

  public final void a()
  {
    synchronized (h.a())
    {
      ArrayList localArrayList = new ArrayList(h.b());
      h.b().clear();
      h.a(this.a, localArrayList);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.d.j
 * JD-Core Version:    0.6.0
 */