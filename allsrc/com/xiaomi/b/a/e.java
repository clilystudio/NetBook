package com.xiaomi.b.a;

import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.o;
import java.text.SimpleDateFormat;
import java.util.Date;

final class e
  implements o
{
  e(a parama)
  {
  }

  public final void a()
  {
    b.b("SMACK " + a.a(this.a).format(new Date()) + " Connection closed (" + a.b(this.a).hashCode() + ")");
  }

  public final void a(Exception paramException)
  {
    b.b("SMACK " + a.a(this.a).format(new Date()) + " Reconnection failed due to an exception (" + a.b(this.a).hashCode() + ")");
    paramException.printStackTrace();
  }

  public final void b()
  {
    b.b("SMACK " + a.a(this.a).format(new Date()) + " Connection reconnected (" + a.b(this.a).hashCode() + ")");
  }

  public final void c()
  {
    b.b("SMACK " + a.a(this.a).format(new Date()) + " Connection started (" + a.b(this.a).hashCode() + ")");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.b.a.e
 * JD-Core Version:    0.6.0
 */