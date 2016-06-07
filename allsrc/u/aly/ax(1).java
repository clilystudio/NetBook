package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ax
  implements Serializable, Cloneable, bz<ax, ax.e>
{
  public static final Map<ax.e, cl> l;
  private static final bR m = new bR("MiscInfo");
  private static final bK n = new bK("time_zone", 8, 1);
  private static final bK o = new bK("language", 11, 2);
  private static final bK p = new bK("country", 11, 3);
  private static final bK q = new bK("latitude", 4, 4);
  private static final bK r = new bK("longitude", 4, 5);
  private static final bK s = new bK("carrier", 11, 6);
  private static final bK t = new bK("latency", 8, 7);
  private static final bK u = new bK("display_name", 11, 8);
  private static final bK v = new bK("access_type", 8, 9);
  private static final bK w = new bK("access_subtype", 11, 10);
  private static final bK x = new bK("user_info", 12, 11);
  private static final Map<Class<? extends bT>, bU> y;
  private byte D = 0;
  private ax.e[] E;
  public int a;
  public String b;
  public String c;
  public double d;
  public double e;
  public String f;
  public int g;
  public String h;
  public ag i;
  public String j;
  public bg k;

  static
  {
    HashMap localHashMap = new HashMap();
    y = localHashMap;
    localHashMap.put(bV.class, new aA(0));
    y.put(bW.class, new aC(0));
    EnumMap localEnumMap = new EnumMap(ax.e.class);
    localEnumMap.put(ax.e.a, new cl("time_zone", 2, new cm(8)));
    localEnumMap.put(ax.e.b, new cl("language", 2, new cm(11)));
    localEnumMap.put(ax.e.c, new cl("country", 2, new cm(11)));
    localEnumMap.put(ax.e.d, new cl("latitude", 2, new cm(4)));
    localEnumMap.put(ax.e.e, new cl("longitude", 2, new cm(4)));
    localEnumMap.put(ax.e.f, new cl("carrier", 2, new cm(11)));
    localEnumMap.put(ax.e.g, new cl("latency", 2, new cm(8)));
    localEnumMap.put(ax.e.h, new cl("display_name", 2, new cm(11)));
    localEnumMap.put(ax.e.i, new cl("access_type", 2, new ck(16, ag.class)));
    localEnumMap.put(ax.e.j, new cl("access_subtype", 2, new cm(11)));
    localEnumMap.put(ax.e.k, new cl("user_info", 2, new cq(12, bg.class)));
    l = Collections.unmodifiableMap(localEnumMap);
    cl.a(ax.class, l);
  }

  public ax()
  {
    ax.e[] arrayOfe = new ax.e[11];
    arrayOfe[0] = ax.e.a;
    arrayOfe[1] = ax.e.b;
    arrayOfe[2] = ax.e.c;
    arrayOfe[3] = ax.e.d;
    arrayOfe[4] = ax.e.e;
    arrayOfe[5] = ax.e.f;
    arrayOfe[6] = ax.e.g;
    arrayOfe[7] = ax.e.h;
    arrayOfe[8] = ax.e.i;
    arrayOfe[9] = ax.e.j;
    arrayOfe[10] = ax.e.k;
    this.E = arrayOfe;
  }

  public ax(ax paramax)
  {
    ax.e[] arrayOfe = new ax.e[11];
    arrayOfe[0] = ax.e.a;
    arrayOfe[1] = ax.e.b;
    arrayOfe[2] = ax.e.c;
    arrayOfe[3] = ax.e.d;
    arrayOfe[4] = ax.e.e;
    arrayOfe[5] = ax.e.f;
    arrayOfe[6] = ax.e.g;
    arrayOfe[7] = ax.e.h;
    arrayOfe[8] = ax.e.i;
    arrayOfe[9] = ax.e.j;
    arrayOfe[10] = ax.e.k;
    this.E = arrayOfe;
    this.D = paramax.D;
    this.a = paramax.a;
    if (paramax.i())
      this.b = paramax.b;
    if (paramax.l())
      this.c = paramax.c;
    this.d = paramax.d;
    this.e = paramax.e;
    if (paramax.u())
      this.f = paramax.f;
    this.g = paramax.g;
    if (paramax.A())
      this.h = paramax.h;
    if (paramax.D())
      this.i = paramax.i;
    if (paramax.G())
      this.j = paramax.j;
    if (paramax.J())
      this.k = new bg(paramax.k);
  }

  public boolean A()
  {
    return this.h != null;
  }

  public ag B()
  {
    return this.i;
  }

  public void C()
  {
    this.i = null;
  }

  public boolean D()
  {
    return this.i != null;
  }

  public String E()
  {
    return this.j;
  }

  public void F()
  {
    this.j = null;
  }

  public boolean G()
  {
    return this.j != null;
  }

  public bg H()
  {
    return this.k;
  }

  public void I()
  {
    this.k = null;
  }

  public boolean J()
  {
    return this.k != null;
  }

  public void K()
  {
    if (this.k != null)
      this.k.p();
  }

  public ax a()
  {
    return new ax(this);
  }

  public ax a(double paramDouble)
  {
    this.d = paramDouble;
    d(true);
    return this;
  }

  public ax a(int paramInt)
  {
    this.a = paramInt;
    a(true);
    return this;
  }

  public ax a(String paramString)
  {
    this.b = paramString;
    return this;
  }

  public ax a(ag paramag)
  {
    this.i = paramag;
    return this;
  }

  public ax a(bg parambg)
  {
    this.k = parambg;
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)y.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    this.D = a.a(this.D, 0, paramBoolean);
  }

  public ax b(double paramDouble)
  {
    this.e = paramDouble;
    e(true);
    return this;
  }

  public ax b(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public void b()
  {
    a(false);
    this.a = 0;
    this.b = null;
    this.c = null;
    d(false);
    this.d = 0.0D;
    e(false);
    this.e = 0.0D;
    this.f = null;
    g(false);
    this.g = 0;
    this.h = null;
    this.i = null;
    this.j = null;
    this.k = null;
  }

  public void b(bN parambN)
  {
    ((bU)y.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.b = null;
  }

  public int c()
  {
    return this.a;
  }

  public ax c(int paramInt)
  {
    this.g = paramInt;
    g(true);
    return this;
  }

  public ax c(String paramString)
  {
    this.f = paramString;
    return this;
  }

  public void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.c = null;
  }

  public ax.e d(int paramInt)
  {
    return ax.e.a(paramInt);
  }

  public ax d(String paramString)
  {
    this.h = paramString;
    return this;
  }

  public void d()
  {
    this.D = a.b(this.D, 0);
  }

  public void d(boolean paramBoolean)
  {
    this.D = a.a(this.D, 1, paramBoolean);
  }

  public ax e(String paramString)
  {
    this.j = paramString;
    return this;
  }

  public void e(boolean paramBoolean)
  {
    this.D = a.a(this.D, 2, paramBoolean);
  }

  public boolean e()
  {
    return a.a(this.D, 0);
  }

  public String f()
  {
    return this.b;
  }

  public void f(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.f = null;
  }

  public void g(boolean paramBoolean)
  {
    this.D = a.a(this.D, 3, paramBoolean);
  }

  public void h()
  {
    this.b = null;
  }

  public void h(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.h = null;
  }

  public void i(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.i = null;
  }

  public boolean i()
  {
    return this.b != null;
  }

  public String j()
  {
    return this.c;
  }

  public void j(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.j = null;
  }

  public void k()
  {
    this.c = null;
  }

  public void k(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.k = null;
  }

  public boolean l()
  {
    return this.c != null;
  }

  public double m()
  {
    return this.d;
  }

  public void n()
  {
    this.D = a.b(this.D, 1);
  }

  public boolean o()
  {
    return a.a(this.D, 1);
  }

  public double p()
  {
    return this.e;
  }

  public void q()
  {
    this.D = a.b(this.D, 2);
  }

  public boolean r()
  {
    return a.a(this.D, 2);
  }

  public String s()
  {
    return this.f;
  }

  public void t()
  {
    this.f = null;
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("MiscInfo(");
    int i2 = 1;
    if (e())
    {
      localStringBuilder.append("time_zone:");
      localStringBuilder.append(this.a);
      i2 = 0;
    }
    if (i())
    {
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("language:");
      if (this.b == null)
      {
        localStringBuilder.append("null");
        i2 = 0;
      }
    }
    else
    {
      if (l())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("country:");
        if (this.c != null)
          break label484;
        localStringBuilder.append("null");
        label127: i2 = 0;
      }
      if (o())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("latitude:");
        localStringBuilder.append(this.d);
        i2 = 0;
      }
      if (r())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("longitude:");
        localStringBuilder.append(this.e);
        i2 = 0;
      }
      if (u())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("carrier:");
        if (this.f != null)
          break label496;
        localStringBuilder.append("null");
        label247: i2 = 0;
      }
      if (x())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("latency:");
        localStringBuilder.append(this.g);
        i2 = 0;
      }
      if (A())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("display_name:");
        if (this.h != null)
          break label508;
        localStringBuilder.append("null");
        label329: i2 = 0;
      }
      if (D())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("access_type:");
        if (this.i != null)
          break label520;
        localStringBuilder.append("null");
        label373: i2 = 0;
      }
      if (!G())
        break label558;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("access_subtype:");
      if (this.j != null)
        break label532;
      localStringBuilder.append("null");
    }
    while (true)
    {
      label417: if (J())
      {
        if (i1 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("user_info:");
        if (this.k != null)
          break label546;
        localStringBuilder.append("null");
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.b);
        break;
        label484: localStringBuilder.append(this.c);
        break label127;
        label496: localStringBuilder.append(this.f);
        break label247;
        label508: localStringBuilder.append(this.h);
        break label329;
        label520: localStringBuilder.append(this.i);
        break label373;
        label532: localStringBuilder.append(this.j);
        i1 = 0;
        break label417;
        label546: localStringBuilder.append(this.k);
      }
      label558: i1 = i2;
    }
  }

  public boolean u()
  {
    return this.f != null;
  }

  public int v()
  {
    return this.g;
  }

  public void w()
  {
    this.D = a.b(this.D, 3);
  }

  public boolean x()
  {
    return a.a(this.D, 3);
  }

  public String y()
  {
    return this.h;
  }

  public void z()
  {
    this.h = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ax
 * JD-Core Version:    0.6.0
 */