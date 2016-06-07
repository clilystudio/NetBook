package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ay
  implements Serializable, Cloneable, bz<ay, ay.e>
{
  public static final Map<ay.e, cl> c;
  private static final bR d = new bR("Page");
  private static final bK e = new bK("page_name", 11, 1);
  private static final bK f = new bK("duration", 10, 2);
  private static final Map<Class<? extends bT>, bU> g;
  public String a;
  public long b;
  private byte i = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    g = localHashMap;
    localHashMap.put(bV.class, new aE(0));
    g.put(bW.class, new aG(0));
    EnumMap localEnumMap = new EnumMap(ay.e.class);
    localEnumMap.put(ay.e.a, new cl("page_name", 1, new cm(11)));
    localEnumMap.put(ay.e.b, new cl("duration", 1, new cm(10)));
    c = Collections.unmodifiableMap(localEnumMap);
    cl.a(ay.class, c);
  }

  public ay()
  {
  }

  public ay(String paramString, long paramLong)
  {
    this();
    this.a = paramString;
    this.b = paramLong;
    b(true);
  }

  public ay(ay paramay)
  {
    this.i = paramay.i;
    if (paramay.e())
      this.a = paramay.a;
    this.b = paramay.b;
  }

  public ay.e a(int paramInt)
  {
    return ay.e.a(paramInt);
  }

  public ay a()
  {
    return new ay(this);
  }

  public ay a(long paramLong)
  {
    this.b = paramLong;
    b(true);
    return this;
  }

  public ay a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)g.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a = null;
  }

  public void b()
  {
    this.a = null;
    b(false);
    this.b = 0L;
  }

  public void b(bN parambN)
  {
    ((bU)g.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    this.i = a.a(this.i, 0, paramBoolean);
  }

  public String c()
  {
    return this.a;
  }

  public void d()
  {
    this.a = null;
  }

  public boolean e()
  {
    return this.a != null;
  }

  public long f()
  {
    return this.b;
  }

  public void h()
  {
    this.i = a.b(this.i, 0);
  }

  public boolean i()
  {
    return a.a(this.i, 0);
  }

  public void j()
  {
    if (this.a == null)
      throw new cz("Required field 'page_name' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Page(");
    localStringBuilder.append("page_name:");
    if (this.a == null)
      localStringBuilder.append("null");
    while (true)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("duration:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ay
 * JD-Core Version:    0.6.0
 */