package com.xiaomi.mistatistic.sdk.a;

import java.io.IOException;
import java.util.List;
import org.json.JSONException;

final class q
  implements j
{
  q(p paramp)
  {
  }

  public final void a()
  {
    if (o.c())
      try
      {
        List localList1 = this.a.a.b();
        if (o.a(this.a.a))
          synchronized (o.b(this.a.a))
          {
            o.b(this.a.a).removeAll(localList1);
            return;
          }
      }
      catch (IOException localIOException)
      {
        new t();
        t.a("", localIOException);
        return;
      }
      catch (JSONException localJSONException)
      {
        new t();
        t.a("", localJSONException);
      }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.q
 * JD-Core Version:    0.6.0
 */