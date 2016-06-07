package com.xiaomi.smack;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.xiaomi.smack.d.g;
import com.xiaomi.smack.d.h;
import com.xiaomi.smack.packet.e;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

final class s
{
  private Writer a;
  private z b;

  protected s(z paramz)
  {
    this.b = paramz;
    this.a = paramz.j;
  }

  final void a()
  {
    this.b.g.clear();
  }

  public final void a(e parame)
  {
    synchronized (this.a)
    {
      try
      {
        String str1 = parame.c();
        this.a.write(str1 + "\r\n");
        this.a.flush();
        String str2 = parame.i();
        if (!TextUtils.isEmpty(str2))
          h.a(this.b.n, str2, h.a(str1), false, System.currentTimeMillis());
        this.b.c(parame);
        return;
      }
      catch (IOException localIOException)
      {
        throw new w(localIOException);
      }
    }
  }

  public final void b()
  {
    synchronized (this.a)
    {
      this.a.write("</stream:stream>");
      this.a.flush();
      return;
    }
  }

  final void c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<stream:stream");
    localStringBuilder.append(" xmlns=\"xm\"");
    localStringBuilder.append(" xmlns:stream=\"xm\"");
    localStringBuilder.append(" to=\"").append(this.b.d()).append("\"");
    localStringBuilder.append(" version=\"105\"");
    localStringBuilder.append(" model=\"").append(g.a(Build.MODEL)).append("\"");
    localStringBuilder.append(" os=\"").append(g.a(Build.VERSION.INCREMENTAL)).append("\"");
    localStringBuilder.append(" connpt=\"").append(g.a(this.b.f())).append("\"");
    localStringBuilder.append(" host=\"").append(this.b.e()).append("\"");
    localStringBuilder.append(">");
    this.a.write(localStringBuilder.toString());
    this.a.flush();
  }

  public final void d()
  {
    synchronized (this.a)
    {
      try
      {
        this.a.write(this.b.t() + "\r\n");
        this.a.flush();
        this.b.u();
        return;
      }
      catch (IOException localIOException)
      {
        throw new w(localIOException);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.s
 * JD-Core Version:    0.6.0
 */