package com.xiaomi.push.service;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.w;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONException;

public final class F extends e
{
  private XMPushService b;
  private byte[] c;
  private String d;
  private String e;
  private String f;

  public F(XMPushService paramXMPushService, String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
  {
    super(9);
    this.b = paramXMPushService;
    this.d = paramString1;
    this.c = paramArrayOfByte;
    this.e = paramString2;
    this.f = paramString3;
  }

  public final void a()
  {
    C localC1 = D.a(this.b);
    if (localC1 == null);
    R localR;
    do
    {
      C localC2;
      while (true)
      {
        try
        {
          C localC3 = D.a(this.b, this.d, this.e, this.f);
          localC2 = localC3;
          if (localC2 != null)
            break;
          b.c("no account for mipush");
          G.a(this.b, 70000002, "no account.");
          return;
        }
        catch (IOException localIOException)
        {
          b.a(localIOException);
          localC2 = localC1;
          continue;
        }
        catch (JSONException localJSONException)
        {
          b.a(localJSONException);
        }
        localC2 = localC1;
      }
      Collection localCollection = u.a().c("5");
      if (localCollection.isEmpty())
      {
        localR = localC2.a(this.b);
        this.b.a(localR);
        u.a().a(localR);
      }
      while (true)
      {
        if (!this.b.f())
          break label247;
        try
        {
          if (localR.m != u.c.c)
            break;
          this.b.a(this.d, this.c);
          return;
        }
        catch (w localw)
        {
          b.a(localw);
          this.b.a(10, localw);
          return;
        }
        localR = (R)localCollection.iterator().next();
      }
    }
    while (localR.m != u.c.a);
    XMPushService localXMPushService1 = this.b;
    XMPushService localXMPushService2 = this.b;
    localXMPushService2.getClass();
    localXMPushService1.a(new a(localXMPushService2, localR));
    return;
    label247: this.b.a(true);
  }

  public final String b()
  {
    return "register app";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.F
 * JD-Core Version:    0.6.0
 */