package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class be
  implements Serializable, Cloneable, bz<be, be.e>
{
  public static final Map<be.e, cl> c;
  private static final bR d = new bR("Traffic");
  private static final bK e = new bK("upload_traffic", 8, 1);
  private static final bK f = new bK("download_traffic", 8, 2);
  private static final Map<Class<? extends bT>, bU> g;
  public int a;
  public int b;
  private byte j = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    g = localHashMap;
    localHashMap.put(bV.class, new aV(0));
    g.put(bW.class, new aX(0));
    EnumMap localEnumMap = new EnumMap(be.e.class);
    localEnumMap.put(be.e.a, new cl("upload_traffic", 1, new cm(8)));
    localEnumMap.put(be.e.b, new cl("download_traffic", 1, new cm(8)));
    c = Collections.unmodifiableMap(localEnumMap);
    cl.a(be.class, c);
  }

  public be()
  {
  }

  public be(int paramInt1, int paramInt2)
  {
    this();
    this.a = paramInt1;
    a(true);
    this.b = paramInt2;
    b(true);
  }

  public be(be parambe)
  {
    this.j = parambe.j;
    this.a = parambe.a;
    this.b = parambe.b;
  }

  public be a()
  {
    return new be(this);
  }

  public be a(int paramInt)
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

  public be c(int paramInt)
  {
    this.b = paramInt;
    b(true);
    return this;
  }

  public be.e d(int paramInt)
  {
    return be.e.a(paramInt);
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
    StringBuilder localStringBuilder = new StringBuilder("Traffic(");
    localStringBuilder.append("upload_traffic:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("download_traffic:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.be
 * JD-Core Version:    0.6.0
 */