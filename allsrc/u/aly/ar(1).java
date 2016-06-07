package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ar
  implements Serializable, Cloneable, bz<ar, ar.e>
{
  public static final Map<ar.e, cl> d;
  private static final bR e = new bR("IdSnapshot");
  private static final bK f = new bK("identity", 11, 1);
  private static final bK g = new bK("ts", 10, 2);
  private static final bK h = new bK("version", 8, 3);
  private static final Map<Class<? extends bT>, bU> i;
  public String a;
  public long b;
  public int c;
  private byte l = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put(bV.class, new E(0));
    i.put(bW.class, new G(0));
    EnumMap localEnumMap = new EnumMap(ar.e.class);
    localEnumMap.put(ar.e.a, new cl("identity", 1, new cm(11)));
    localEnumMap.put(ar.e.b, new cl("ts", 1, new cm(10)));
    localEnumMap.put(ar.e.c, new cl("version", 1, new cm(8)));
    d = Collections.unmodifiableMap(localEnumMap);
    cl.a(ar.class, d);
  }

  public ar()
  {
  }

  public ar(String paramString, long paramLong, int paramInt)
  {
    this();
    this.a = paramString;
    this.b = paramLong;
    b(true);
    this.c = paramInt;
    c(true);
  }

  public ar(ar paramar)
  {
    this.l = paramar.l;
    if (paramar.e())
      this.a = paramar.a;
    this.b = paramar.b;
    this.c = paramar.c;
  }

  public ar a()
  {
    return new ar(this);
  }

  public ar a(int paramInt)
  {
    this.c = paramInt;
    c(true);
    return this;
  }

  public ar a(long paramLong)
  {
    this.b = paramLong;
    b(true);
    return this;
  }

  public ar a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().a(parambN, this);
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
    c(false);
    this.c = 0;
  }

  public void b(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    this.l = a.a(this.l, 0, paramBoolean);
  }

  public String c()
  {
    return this.a;
  }

  public ar.e c(int paramInt)
  {
    return ar.e.a(paramInt);
  }

  public void c(boolean paramBoolean)
  {
    this.l = a.a(this.l, 1, paramBoolean);
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
    this.l = a.b(this.l, 0);
  }

  public boolean i()
  {
    return a.a(this.l, 0);
  }

  public int j()
  {
    return this.c;
  }

  public void k()
  {
    this.l = a.b(this.l, 1);
  }

  public boolean l()
  {
    return a.a(this.l, 1);
  }

  public void m()
  {
    if (this.a == null)
      throw new cz("Required field 'identity' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdSnapshot(");
    localStringBuilder.append("identity:");
    if (this.a == null)
      localStringBuilder.append("null");
    while (true)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      localStringBuilder.append(this.c);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ar
 * JD-Core Version:    0.6.0
 */