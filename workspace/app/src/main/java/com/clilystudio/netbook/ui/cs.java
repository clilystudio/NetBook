package com.clilystudio.netbook.ui;

import com.koushikdutta.async.http.a.d;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;

final class cs
  implements r
{
  int a = 0;

  cs(WifiActivity paramWifiActivity, String[] paramArrayOfString)
  {
  }

  public final void a(h paramh, l paraml)
  {
    d locald = (d)paramh.b_();
    this.a = 0;
    locald.a(new ct(this, locald, new Boolean[] { null }));
    paramh.b(new cv(this, paraml));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.cs
 * JD-Core Version:    0.6.0
 */