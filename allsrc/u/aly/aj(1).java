package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class aj
  implements Serializable, Cloneable, bz<aj, aj.e>
{
  public static final Map<aj.e, cl> d;
  private static final bR e = new bR("ClientStats");
  private static final bK f = new bK("successful_requests", 8, 1);
  private static final bK g = new bK("failed_requests", 8, 2);
  private static final bK h = new bK("last_request_spent_ms", 8, 3);
  private static final Map<Class<? extends bT>, bU> i;
  public int a;
  public int b;
  public int c;
  private byte m = 0;
  private aj.e[] n;

  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put(bV.class, new k(0));
    i.put(bW.class, new m(0));
    EnumMap localEnumMap = new EnumMap(aj.e.class);
    localEnumMap.put(aj.e.a, new cl("successful_requests", 1, new cm(8)));
    localEnumMap.put(aj.e.b, new cl("failed_requests", 1, new cm(8)));
    localEnumMap.put(aj.e.c, new cl("last_request_spent_ms", 2, new cm(8)));
    d = Collections.unmodifiableMap(localEnumMap);
    cl.a(aj.class, d);
  }

  public aj()
  {
    aj.e[] arrayOfe = new aj.e[1];
    arrayOfe[0] = aj.e.c;
    this.n = arrayOfe;
    this.a = 0;
    this.b = 0;
  }

  public aj(int paramInt1, int paramInt2)
  {
    this();
    this.a = paramInt1;
    a(true);
    this.b = paramInt2;
    b(true);
  }

  public aj(aj paramaj)
  {
    aj.e[] arrayOfe = new aj.e[1];
    arrayOfe[0] = aj.e.c;
    this.n = arrayOfe;
    this.m = paramaj.m;
    this.a = paramaj.a;
    this.b = paramaj.b;
    this.c = paramaj.c;
  }

  public aj a()
  {
    return new aj(this);
  }

  public aj a(int paramInt)
  {
    this.a = paramInt;
    a(true);
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

  public void b()
  {
    this.a = 0;
    this.b = 0;
    c(false);
    this.c = 0;
  }

  public void b(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    this.m = a.a(this.m, 1, paramBoolean);
  }

  public int c()
  {
    return this.a;
  }

  public aj c(int paramInt)
  {
    this.b = paramInt;
    b(true);
    return this;
  }

  public void c(boolean paramBoolean)
  {
    this.m = a.a(this.m, 2, paramBoolean);
  }

  public aj d(int paramInt)
  {
    this.c = paramInt;
    c(true);
    return this;
  }

  public void d()
  {
    this.m = a.b(this.m, 0);
  }

  public aj.e e(int paramInt)
  {
    return aj.e.a(paramInt);
  }

  public boolean e()
  {
    return a.a(this.m, 0);
  }

  public int f()
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

  public int j()
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
    StringBuilder localStringBuilder = new StringBuilder("ClientStats(");
    localStringBuilder.append("successful_requests:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("failed_requests:");
    localStringBuilder.append(this.b);
    if (l())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("last_request_spent_ms:");
      localStringBuilder.append(this.c);
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.aj
 * JD-Core Version:    0.6.0
 */