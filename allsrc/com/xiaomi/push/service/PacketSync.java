package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.network.f;
import com.xiaomi.smack.l;
import com.xiaomi.smack.n;
import com.xiaomi.smack.packet.a;
import com.xiaomi.smack.packet.d;
import com.xiaomi.smack.packet.e;
import com.xiaomi.smack.packet.i;
import com.xiaomi.smack.x;
import com.xiaomi.smack.z;

public final class PacketSync
{
  private XMPushService a;

  PacketSync(XMPushService paramXMPushService)
  {
    this.a = paramXMPushService;
  }

  public final void a(e parame)
  {
    x localx;
    com.xiaomi.smack.y localy;
    String str6;
    String str7;
    if ((parame instanceof x))
    {
      localx = (x)parame;
      localy = localx.a();
      str6 = localx.f();
      str7 = localx.g();
      if (!TextUtils.isEmpty(str6));
    }
    String str1;
    while (true)
    {
      return;
      R localR2 = u.a().b(str6, str7);
      if (localR2 == null)
        continue;
      if (localy == com.xiaomi.smack.y.a)
      {
        localR2.a(u.c.c, 1, 0, null, null);
        com.xiaomi.a.a.a.b.a("SMACK: channel bind succeeded, chid=" + str6);
        return;
      }
      i locali = localx.j();
      com.xiaomi.a.a.a.b.a("SMACK: channel bind failed, error=" + locali.d());
      if (locali == null)
        continue;
      if ("auth".equals(locali.b()))
      {
        localR2.a(u.c.a, 1, 5, locali.a(), locali.b());
        u.a().a(str6, str7);
      }
      while (true)
      {
        com.xiaomi.a.a.a.b.a("SMACK: channel bind failed, chid=" + str6 + " reason=" + locali.a());
        return;
        if ("cancel".equals(locali.b()))
        {
          localR2.a(u.c.a, 1, 7, locali.a(), locali.b());
          u.a().a(str6, str7);
          continue;
        }
        if (!"wait".equals(locali.b()))
          continue;
        this.a.b(localR2);
        localR2.a(u.c.a, 1, 7, locali.a(), locali.b());
      }
      str1 = parame.f();
      if (TextUtils.isEmpty(str1))
        str1 = "1";
      if (str1.equals("0"))
      {
        if ((!(parame instanceof com.xiaomi.smack.packet.b)) || (!"0".equals(parame.e())) || (!"result".equals(((com.xiaomi.smack.packet.b)parame).a().toString())))
          continue;
        l locall = this.a.g();
        if (!(locall instanceof z))
          continue;
        ((z)locall).v();
        return;
      }
      if ((parame instanceof com.xiaomi.smack.packet.b))
      {
        a locala2 = parame.p("kick");
        if (locala2 == null)
          break;
        String str3 = parame.g();
        String str4 = locala2.a("type");
        String str5 = locala2.a("reason");
        com.xiaomi.a.a.a.b.a("kicked by server, chid=" + str1 + " userid=" + str3 + " type=" + str4 + " reason=" + str5);
        if ("wait".equals(str4))
        {
          R localR1 = u.a().b(str1, str3);
          if (localR1 == null)
            continue;
          this.a.b(localR1);
          localR1.a(u.c.a, 3, 0, str5, str4);
          return;
        }
        this.a.a(str1, str3, 3, str5, str4);
        u.a().a(str1, str3);
        return;
      }
      else
      {
        if (!(parame instanceof d))
          break;
        d locald = (d)parame;
        if (!"redir".equals(locald.a()))
          break;
        a locala1 = locald.p("hosts");
        if (locala1 == null)
          continue;
        String str2 = locala1.b();
        if (TextUtils.isEmpty(str2))
          continue;
        String[] arrayOfString = str2.split(";");
        com.xiaomi.network.c localc = f.a().a(n.d());
        if ((localc == null) || (arrayOfString.length <= 0))
          continue;
        localc.a(arrayOfString);
        this.a.a(20, null);
        this.a.a(true);
        return;
      }
    }
    this.a.e().a(this.a, str1, parame);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.PacketSync
 * JD-Core Version:    0.6.0
 */