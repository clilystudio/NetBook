package cn.sharesdk.framework.statistics.b;

import android.text.TextUtils;
import android.util.Base64;
import com.arcsoft.hpay100.a.a;

public class b extends c
{
  private static int n;
  private static long o;
  public int a;
  public String b;
  public String c;
  public String d;

  protected String a()
  {
    return "[AUT]";
  }

  protected void a(long paramLong)
  {
    o = paramLong;
  }

  protected int b()
  {
    return 5000;
  }

  protected int c()
  {
    return 5;
  }

  protected long d()
  {
    return n;
  }

  protected long e()
  {
    return o;
  }

  protected void f()
  {
    n = 1 + n;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(super.toString());
    localStringBuilder.append('|').append(this.a);
    localStringBuilder.append('|').append(this.b);
    localStringBuilder.append('|');
    if (!TextUtils.isEmpty(this.d));
    try
    {
      String str = Base64.encodeToString(a.d(this.f.substring(0, 16), this.d), 0);
      if ((!TextUtils.isEmpty(str)) && (str.contains("\n")))
        str = str.replace("\n", "");
      localStringBuilder.append(str);
      localStringBuilder.append('|');
      if (!TextUtils.isEmpty(this.m))
        localStringBuilder.append(this.m);
      localStringBuilder.append('|');
      if (!TextUtils.isEmpty(this.c))
        localStringBuilder.append(this.c);
      return localStringBuilder.toString();
    }
    catch (Throwable localThrowable)
    {
      while (true)
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.b.b
 * JD-Core Version:    0.6.0
 */