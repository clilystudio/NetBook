package com.a.a;

import android.content.Context;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;

final class e
  implements Runnable
{
  e(d paramd, Context paramContext)
  {
  }

  public final void run()
  {
    d.b(this.a, this.b);
    if ((!d.e(this.a)) && (d.b() - d.f(this.a).get() >= q.a().c()))
      d.f(this.a).set(9223372036854775807L);
    try
    {
      d.c(this.a, this.b);
      return;
    }
    catch (JSONException localJSONException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.a.a.e
 * JD-Core Version:    0.6.0
 */