package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class aw
  implements Serializable, Cloneable, bz<aw, aw.e>
{
  public static final Map<aw.e, cl> d;
  private static final bR e = new bR("Location");
  private static final bK f = new bK("lat", 4, 1);
  private static final bK g = new bK("lng", 4, 2);
  private static final bK h = new bK("ts", 10, 3);
  private static final Map<Class<? extends bT>, bU> i;
  public double a;
  public double b;
  public long c;
  private byte m = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put(bV.class, new Y(0));
    i.put(bW.class, new ad(0));
    EnumMap localEnumMap = new EnumMap(aw.e.class);
    localEnumMap.put(aw.e.a, new cl("lat", 1, new cm(4)));
    localEnumMap.put(aw.e.b, new cl("lng", 1, new cm(4)));
    localEnumMap.put(aw.e.c, new cl("ts", 1, new cm(10)));
    d = Collections.unmodifiableMap(localEnumMap);
    cl.a(aw.class, d);
  }

  public aw()
  {
  }

  public aw(double paramDouble1, double paramDouble2, long paramLong)
  {
    this();
    this.a = paramDouble1;
    a(true);
    this.b = paramDouble2;
    b(true);
    this.c = paramLong;
    c(true);
  }

  public aw(aw paramaw)
  {
    this.m = paramaw.m;
    this.a = paramaw.a;
    this.b = paramaw.b;
    this.c = paramaw.c;
  }

  public aw.e a(int paramInt)
  {
    return aw.e.a(paramInt);
  }

  public aw a()
  {
    return new aw(this);
  }

  public aw a(double paramDouble)
  {
    this.a = paramDouble;
    a(true);
    return this;
  }

  public aw a(long paramLong)
  {
    this.c = paramLong;
    c(true);
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    this.m = a.a(this.m, 0, paramBoolean);
  }

  public aw b(double paramDouble)
  {
    this.b = paramDouble;
    b(true);
    return this;
  }

  public void b()
  {
    a(false);
    this.a = 0.0D;
    b(false);
    this.b = 0.0D;
    c(false);
    this.c = 0L;
  }

  public void b(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    this.m = a.a(this.m, 1, paramBoolean);
  }

  public double c()
  {
    return this.a;
  }

  public void c(boolean paramBoolean)
  {
    this.m = a.a(this.m, 2, paramBoolean);
  }

  public void d()
  {
    this.m = a.b(this.m, 0);
  }

  public boolean e()
  {
    return a.a(this.m, 0);
  }

  public double f()
  {
    return this.b;
  }

  public void h()
  {
    this.m = a.b(this.m, 1);
  }

  public boolean i()
  {
    return a.a(this.m, 1);
  }

  public long j()
  {
    return this.c;
  }

  public void k()
  {
    this.m = a.b(this.m, 2);
  }

  public boolean l()
  {
    return a.a(this.m, 2);
  }

  public void m()
  {
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Location(");
    localStringBuilder.append("lat:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("lng:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", ");
    localStringBuilder.append("ts:");
    localStringBuilder.append(this.c);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.aw
 * JD-Core Version:    0.6.0
 */