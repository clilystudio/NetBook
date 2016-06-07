package com.clilystudio.netbook.ui;

import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.a.k;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import java.util.Iterator;
import org.apache.http.NameValuePair;

final class cq
  implements r
{
  cq(WifiActivity paramWifiActivity, String[] paramArrayOfString)
  {
  }

  public final void a(h paramh, l paraml)
  {
    Iterator localIterator = ((k)paramh.b_()).b().iterator();
    while (localIterator.hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
      if (!"filename".equals(localNameValuePair.getName()))
        continue;
      this.a[0] = localNameValuePair.getValue();
    }
    paraml.a("finish");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.cq
 * JD-Core Version:    0.6.0
 */