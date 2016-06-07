package com.xiaomi.smack;

import com.xiaomi.kenai.jbosh.M;
import com.xiaomi.kenai.jbosh.ab;
import com.xiaomi.kenai.jbosh.p;
import java.io.PipedWriter;

final class g
  implements M
{
  g(b paramb)
  {
  }

  public final boolean a(ab paramab)
  {
    if (paramab.a() != null);
    try
    {
      b.a(this.a).write(paramab.a().d());
      b.a(this.a).flush();
      label34: return false;
    }
    catch (Exception localException)
    {
      break label34;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.g
 * JD-Core Version:    0.6.0
 */