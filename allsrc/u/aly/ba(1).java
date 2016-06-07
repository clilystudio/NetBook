package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ba
  implements Serializable, Cloneable, bz<ba, ba.e>
{
  public static final Map<ba.e, cl> c;
  private static final bR d = new bR("Resolution");
  private static final bK e = new bK("height", 8, 1);
  private static final bK f = new bK("width", 8, 2);
  private static final Map<Class<? extends bT>, bU> g;
  public int a;
  public int b;
  private byte j = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    g = localHashMap;
    localHashMap.put(bV.class, new aJ(0));
    g.put(bW.class, new aL(0));
    EnumMap localEnumMap = new EnumMap(ba.e.class);
    localEnumMap.put(ba.e.a, new cl("height", 1, new cm(8)));
    localEnumMap.put(ba.e.b, new cl("width", 1, new cm(8)));
    c = Collections.unmodifiableMap(localEnumMap);
    cl.a(ba.class, c);
  }

  public ba()
  {
  }

  public ba(int paramInt1, int paramInt2)
  {
    this();
    this.a = paramInt1;
    a(true);
    this.b = paramInt2;
    b(true);
  }

  public ba(ba paramba)
  {
    this.j = paramba.j;
    this.a = paramba.a;
    this.b = paramba.b;
  }

  public ba a()
  {
    return new ba(this);
  }

  public ba a(int paramInt)
  {
    this.a = paramInt;
    a(true);
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)g.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    this.j = a.a(this.j, 0, paramBoolean);
  }

  public void b()
  {
    a(false);
    this.a = 0;
    b(false);
    this.b = 0;
  }

  public void b(bN parambN)
  {
    ((bU)g.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    this.j = a.a(this.j, 1, paramBoolean);
  }

  public int c()
  {
    return this.a;
  }

  public ba c(int paramInt)
  {
    this.b = paramInt;
    b(true);
    return this;
  }

  public ba.e d(int paramInt)
  {
    return ba.e.a(paramInt);
  }

  public void d()
  {
    this.j = a.b(this.j, 0);
  }

  public boolean e()
  {
    return a.a(this.j, 0);
  }

  public int f()
  {
    return this.b;
  }

  public void h()
  {
    this.j = a.b(this.j, 1);
  }

  public boolean i()
  {
    return a.a(this.j, 1);
  }

  public void j()
  {
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Resolution(");
    localStringBuilder.append("height:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("width:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ba
 * JD-Core Version:    0.6.0
 */