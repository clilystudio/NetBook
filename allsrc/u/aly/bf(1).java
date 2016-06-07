package u.aly;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class bf
  implements Serializable, Cloneable, bz<bf, bf.e>
{
  public static final Map<bf.e, cl> j;
  private static final bR k = new bR("UALogEntry");
  private static final bK l = new bK("client_stats", 12, 1);
  private static final bK m = new bK("app_info", 12, 2);
  private static final bK n = new bK("device_info", 12, 3);
  private static final bK o = new bK("misc_info", 12, 4);
  private static final bK p = new bK("activate_msg", 12, 5);
  private static final bK q = new bK("instant_msgs", 15, 6);
  private static final bK r = new bK("sessions", 15, 7);
  private static final bK s = new bK("imprint", 12, 8);
  private static final bK t = new bK("id_tracking", 12, 9);
  private static final Map<Class<? extends bT>, bU> u;
  public aj a;
  public ai b;
  public ak c;
  public ax d;
  public ah e;
  public List<av> f;
  public List<bd> g;
  public at h;
  public as i;
  private bf.e[] v;

  static
  {
    HashMap localHashMap = new HashMap();
    u = localHashMap;
    localHashMap.put(bV.class, new aZ(0));
    u.put(bW.class, new bj(0));
    EnumMap localEnumMap = new EnumMap(bf.e.class);
    localEnumMap.put(bf.e.a, new cl("client_stats", 1, new cq(12, aj.class)));
    localEnumMap.put(bf.e.b, new cl("app_info", 1, new cq(12, ai.class)));
    localEnumMap.put(bf.e.c, new cl("device_info", 1, new cq(12, ak.class)));
    localEnumMap.put(bf.e.d, new cl("misc_info", 1, new cq(12, ax.class)));
    localEnumMap.put(bf.e.e, new cl("activate_msg", 2, new cq(12, ah.class)));
    localEnumMap.put(bf.e.f, new cl("instant_msgs", 2, new cn(15, new cq(12, av.class))));
    localEnumMap.put(bf.e.g, new cl("sessions", 2, new cn(15, new cq(12, bd.class))));
    localEnumMap.put(bf.e.h, new cl("imprint", 2, new cq(12, at.class)));
    localEnumMap.put(bf.e.i, new cl("id_tracking", 2, new cq(12, as.class)));
    j = Collections.unmodifiableMap(localEnumMap);
    cl.a(bf.class, j);
  }

  public bf()
  {
    bf.e[] arrayOfe = new bf.e[5];
    arrayOfe[0] = bf.e.e;
    arrayOfe[1] = bf.e.f;
    arrayOfe[2] = bf.e.g;
    arrayOfe[3] = bf.e.h;
    arrayOfe[4] = bf.e.i;
    this.v = arrayOfe;
  }

  public bf(aj paramaj, ai paramai, ak paramak, ax paramax)
  {
    this();
    this.a = paramaj;
    this.b = paramai;
    this.c = paramak;
    this.d = paramax;
  }

  public bf(bf parambf)
  {
    bf.e[] arrayOfe = new bf.e[5];
    arrayOfe[0] = bf.e.e;
    arrayOfe[1] = bf.e.f;
    arrayOfe[2] = bf.e.g;
    arrayOfe[3] = bf.e.h;
    arrayOfe[4] = bf.e.i;
    this.v = arrayOfe;
    if (parambf.e())
      this.a = new aj(parambf.a);
    if (parambf.i())
      this.b = new ai(parambf.b);
    if (parambf.l())
      this.c = new ak(parambf.c);
    if (parambf.o())
      this.d = new ax(parambf.d);
    if (parambf.r())
      this.e = new ah(parambf.e);
    ArrayList localArrayList1;
    Iterator localIterator1;
    ArrayList localArrayList2;
    Iterator localIterator2;
    if (parambf.w())
    {
      localArrayList1 = new ArrayList();
      localIterator1 = parambf.f.iterator();
      if (!localIterator1.hasNext())
        this.f = localArrayList1;
    }
    else if (parambf.B())
    {
      localArrayList2 = new ArrayList();
      localIterator2 = parambf.g.iterator();
    }
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        this.g = localArrayList2;
        if (parambf.E())
          this.h = new at(parambf.h);
        if (parambf.H())
          this.i = new as(parambf.i);
        return;
        localArrayList1.add(new av((av)localIterator1.next()));
        break;
      }
      localArrayList2.add(new bd((bd)localIterator2.next()));
    }
  }

  public void A()
  {
    this.g = null;
  }

  public boolean B()
  {
    return this.g != null;
  }

  public at C()
  {
    return this.h;
  }

  public void D()
  {
    this.h = null;
  }

  public boolean E()
  {
    return this.h != null;
  }

  public as F()
  {
    return this.i;
  }

  public void G()
  {
    this.i = null;
  }

  public boolean H()
  {
    return this.i != null;
  }

  public void I()
  {
    if (this.a == null)
      throw new cz("Required field 'client_stats' was not present! Struct: " + toString());
    if (this.b == null)
      throw new cz("Required field 'app_info' was not present! Struct: " + toString());
    if (this.c == null)
      throw new cz("Required field 'device_info' was not present! Struct: " + toString());
    if (this.d == null)
      throw new cz("Required field 'misc_info' was not present! Struct: " + toString());
    if (this.a != null)
      this.a.m();
    if (this.b != null)
      this.b.H();
    if (this.c != null)
      this.c.ac();
    if (this.d != null)
      this.d.K();
    if (this.e != null)
      this.e.f();
    if (this.h != null)
      this.h.n();
    if (this.i != null)
      this.i.p();
  }

  public bf.e a(int paramInt)
  {
    return bf.e.a(paramInt);
  }

  public bf a()
  {
    return new bf(this);
  }

  public bf a(List<av> paramList)
  {
    this.f = paramList;
    return this;
  }

  public bf a(ah paramah)
  {
    this.e = paramah;
    return this;
  }

  public bf a(ai paramai)
  {
    this.b = paramai;
    return this;
  }

  public bf a(aj paramaj)
  {
    this.a = paramaj;
    return this;
  }

  public bf a(ak paramak)
  {
    this.c = paramak;
    return this;
  }

  public bf a(as paramas)
  {
    this.i = paramas;
    return this;
  }

  public bf a(at paramat)
  {
    this.h = paramat;
    return this;
  }

  public bf a(ax paramax)
  {
    this.d = paramax;
    return this;
  }

  public void a(av paramav)
  {
    if (this.f == null)
      this.f = new ArrayList();
    this.f.add(paramav);
  }

  public void a(bN parambN)
  {
    ((bU)u.get(parambN.s())).a().a(parambN, this);
  }

  public void a(bd parambd)
  {
    if (this.g == null)
      this.g = new ArrayList();
    this.g.add(parambd);
  }

  public void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a = null;
  }

  public bf b(List<bd> paramList)
  {
    this.g = paramList;
    return this;
  }

  public void b()
  {
    this.a = null;
    this.b = null;
    this.c = null;
    this.d = null;
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
    this.i = null;
  }

  public void b(bN parambN)
  {
    ((bU)u.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.b = null;
  }

  public aj c()
  {
    return this.a;
  }

  public void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.c = null;
  }

  public void d()
  {
    this.a = null;
  }

  public void d(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.d = null;
  }

  public void e(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.e = null;
  }

  public boolean e()
  {
    return this.a != null;
  }

  public ai f()
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
    if (!paramBoolean)
      this.g = null;
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

  public ak j()
  {
    return this.c;
  }

  public void k()
  {
    this.c = null;
  }

  public boolean l()
  {
    return this.c != null;
  }

  public ax m()
  {
    return this.d;
  }

  public void n()
  {
    this.d = null;
  }

  public boolean o()
  {
    return this.d != null;
  }

  public ah p()
  {
    return this.e;
  }

  public void q()
  {
    this.e = null;
  }

  public boolean r()
  {
    return this.e != null;
  }

  public int s()
  {
    if (this.f == null)
      return 0;
    return this.f.size();
  }

  public Iterator<av> t()
  {
    if (this.f == null)
      return null;
    return this.f.iterator();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("UALogEntry(");
    localStringBuilder.append("client_stats:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("app_info:");
      if (this.b != null)
        break label342;
      localStringBuilder.append("null");
      label65: localStringBuilder.append(", ");
      localStringBuilder.append("device_info:");
      if (this.c != null)
        break label354;
      localStringBuilder.append("null");
      label96: localStringBuilder.append(", ");
      localStringBuilder.append("misc_info:");
      if (this.d != null)
        break label366;
      localStringBuilder.append("null");
      label127: if (r())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("activate_msg:");
        if (this.e != null)
          break label378;
        localStringBuilder.append("null");
      }
      label165: if (w())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("instant_msgs:");
        if (this.f != null)
          break label390;
        localStringBuilder.append("null");
      }
      label203: if (B())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("sessions:");
        if (this.g != null)
          break label402;
        localStringBuilder.append("null");
      }
      label241: if (E())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("imprint:");
        if (this.h != null)
          break label414;
        localStringBuilder.append("null");
      }
      label279: if (H())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("id_tracking:");
        if (this.i != null)
          break label426;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label342: localStringBuilder.append(this.b);
      break label65;
      label354: localStringBuilder.append(this.c);
      break label96;
      label366: localStringBuilder.append(this.d);
      break label127;
      label378: localStringBuilder.append(this.e);
      break label165;
      label390: localStringBuilder.append(this.f);
      break label203;
      label402: localStringBuilder.append(this.g);
      break label241;
      label414: localStringBuilder.append(this.h);
      break label279;
      label426: localStringBuilder.append(this.i);
    }
  }

  public List<av> u()
  {
    return this.f;
  }

  public void v()
  {
    this.f = null;
  }

  public boolean w()
  {
    return this.f != null;
  }

  public int x()
  {
    if (this.g == null)
      return 0;
    return this.g.size();
  }

  public Iterator<bd> y()
  {
    if (this.g == null)
      return null;
    return this.g.iterator();
  }

  public List<bd> z()
  {
    return this.g;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bf
 * JD-Core Version:    0.6.0
 */