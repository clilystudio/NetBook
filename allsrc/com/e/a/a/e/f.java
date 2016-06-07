package com.e.a.a.e;

import android.os.Bundle;
import android.support.design.widget.K;

public final class f extends com.e.a.a.d.a
{
  private g a;

  public f()
  {
  }

  public f(Bundle paramBundle)
  {
    b(paramBundle);
  }

  public final int a()
  {
    return 4;
  }

  public final void a(Bundle paramBundle)
  {
    Bundle localBundle = com.arcsoft.hpay100.a.a.a(this.a);
    super.a(localBundle);
    paramBundle.putAll(localBundle);
  }

  public final void b(Bundle paramBundle)
  {
    super.b(paramBundle);
    this.a = com.arcsoft.hpay100.a.a.a(paramBundle);
  }

  public final boolean b()
  {
    if (this.a == null)
      return false;
    g localg = this.a;
    if (localg.e == null);
    for (int i = 0; (i == 8) && ((localg.d == null) || (localg.d.length == 0)); i = localg.e.n())
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, thumbData should not be null when send emoji");
      return false;
    }
    if ((localg.d != null) && (localg.d.length > 32768))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, thumbData is invalid");
      return false;
    }
    if ((localg.b != null) && (localg.b.length() > 512))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, title is invalid");
      return false;
    }
    if ((localg.c != null) && (localg.c.length() > 1024))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, description is invalid");
      return false;
    }
    if (localg.e == null)
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, mediaObject is null");
      return false;
    }
    if ((localg.f != null) && (localg.f.length() > 64))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, mediaTagName is too long");
      return false;
    }
    return localg.e.o();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.e.f
 * JD-Core Version:    0.6.0
 */