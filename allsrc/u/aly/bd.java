package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class bd
  implements Serializable, Cloneable, bz<bd, bd.e>
{
  public static final Map<bd.e, cl> h;
  private static final bR i = new bR("Session");
  private static final bK j = new bK("id", 11, 1);
  private static final bK k = new bK("start_time", 10, 2);
  private static final bK l = new bK("end_time", 10, 3);
  private static final bK m = new bK("duration", 10, 4);
  private static final bK n = new bK("pages", 15, 5);
  private static final bK o = new bK("locations", 15, 6);
  private static final bK p = new bK("traffic", 12, 7);
  private static final Map<Class<? extends bT>, bU> q;
  public String a;
  public long b;
  public long c;
  public long d;
  public List<ay> e;
  public List<aw> f;
  public be g;
  private byte u = 0;
  private bd.e[] v;

  static
  {
    HashMap localHashMap = new HashMap();
    q = localHashMap;
    localHashMap.put(bV.class, new aR(0));
    q.put(bW.class, new aT(0));
    EnumMap localEnumMap = new EnumMap(bd.e.class);
    localEnumMap.put(bd.e.a, new cl("id", 1, new cm(11)));
    localEnumMap.put(bd.e.b, new cl("start_time", 1, new cm(10)));
    localEnumMap.put(bd.e.c, new cl("end_time", 1, new cm(10)));
    localEnumMap.put(bd.e.d, new cl("duration", 1, new cm(10)));
    localEnumMap.put(bd.e.e, new cl("pages", 2, new cn(15, new cq(12, ay.class))));
    localEnumMap.put(bd.e.f, new cl("locations", 2, new cn(15, new cq(12, aw.class))));
    localEnumMap.put(bd.e.g, new cl("traffic", 2, new cq(12, be.class)));
    h = Collections.unmodifiableMap(localEnumMap);
    cl.a(bd.class, h);
  }

  public bd()
  {
    bd.e[] arrayOfe = new bd.e[3];
    arrayOfe[0] = bd.e.e;
    arrayOfe[1] = bd.e.f;
    arrayOfe[2] = bd.e.g;
    this.v = arrayOfe;
  }

  public bd(String paramString, long paramLong1, long paramLong2, long paramLong3)
  {
    this();
    this.a = paramString;
    this.b = paramLong1;
    b(true);
    this.c = paramLong2;
    c(true);
    this.d = paramLong3;
    d(true);
  }

  public bd(bd parambd)
  {
    bd.e[] arrayOfe = new bd.e[3];
    arrayOfe[0] = bd.e.e;
    arrayOfe[1] = bd.e.f;
    arrayOfe[2] = bd.e.g;
    this.v = arrayOfe;
    this.u = parambd.u;
    if (parambd.e())
      this.a = parambd.a;
    this.b = parambd.b;
    this.c = parambd.c;
    this.d = parambd.d;
    ArrayList localArrayList1;
    Iterator localIterator1;
    ArrayList localArrayList2;
    Iterator localIterator2;
    if (parambd.t())
    {
      localArrayList1 = new ArrayList();
      localIterator1 = parambd.e.iterator();
      if (!localIterator1.hasNext())
        this.e = localArrayList1;
    }
    else if (parambd.y())
    {
      localArrayList2 = new ArrayList();
      localIterator2 = parambd.f.iterator();
    }
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        this.f = localArrayList2;
        if (parambd.B())
          this.g = new be(parambd.g);
        return;
        localArrayList1.add(new ay((ay)localIterator1.next()));
        break;
      }
      localArrayList2.add(new aw((aw)localIterator2.next()));
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

  public void C()
  {
    if (this.a == null)
      throw new cz("Required field 'id' was not present! Struct: " + toString());
    if (this.g != null)
      this.g.j();
  }

  public bd.e a(int paramInt)
  {
    return bd.e.a(paramInt);
  }

  public bd a()
  {
    return new bd(this);
  }

  public bd a(long paramLong)
  {
    this.b = paramLong;
    b(true);
    return this;
  }

  public bd a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public bd a(List<ay> paramList)
  {
    this.e = paramList;
    return this;
  }

  public bd a(be parambe)
  {
    this.g = parambe;
    return this;
  }

  public void a(aw paramaw)
  {
    if (this.f == null)
      this.f = new ArrayList();
    this.f.add(paramaw);
  }

  public void a(ay paramay)
  {
    if (this.e == null)
      this.e = new ArrayList();
    this.e.add(paramay);
  }

  public void a(bN parambN)
  {
    ((bU)q.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a = null;
  }

  public bd b(long paramLong)
  {
    this.c = paramLong;
    c(true);
    return this;
  }

  public bd b(List<aw> paramList)
  {
    this.f = paramList;
    return this;
  }

  public void b()
  {
    this.a = null;
    b(false);
    this.b = 0L;
    c(false);
    this.c = 0L;
    d(false);
    this.d = 0L;
    this.e = null;
    this.f = null;
    this.g = null;
  }

  public void b(bN parambN)
  {
    ((bU)q.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    this.u = a.a(this.u, 0, paramBoolean);
  }

  public String c()
  {
    return this.a;
  }

  public bd c(long paramLong)
  {
    this.d = paramLong;
    d(true);
    return this;
  }

  public void c(boolean paramBoolean)
  {
    this.u = a.a(this.u, 1, paramBoolean);
  }

  public void d()
  {
    this.a = null;
  }

  public void d(boolean paramBoolean)
  {
    this.u = a.a(this.u, 2, paramBoolean);
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

  public long f()
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
    this.u = a.b(this.u, 0);
  }

  public boolean i()
  {
    return a.a(this.u, 0);
  }

  public long j()
  {
    return this.c;
  }

  public void k()
  {
    this.u = a.b(this.u, 1);
  }

  public boolean l()
  {
    return a.a(this.u, 1);
  }

  public long m()
  {
    return this.d;
  }

  public void n()
  {
    this.u = a.b(this.u, 2);
  }

  public boolean o()
  {
    return a.a(this.u, 2);
  }

  public int p()
  {
    if (this.e == null)
      return 0;
    return this.e.size();
  }

  public Iterator<ay> q()
  {
    if (this.e == null)
      return null;
    return this.e.iterator();
  }

  public List<ay> r()
  {
    return this.e;
  }

  public void s()
  {
    this.e = null;
  }

  public boolean t()
  {
    return this.e != null;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Session(");
    localStringBuilder.append("id:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("start_time:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("end_time:");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", ");
      localStringBuilder.append("duration:");
      localStringBuilder.append(this.d);
      if (t())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("pages:");
        if (this.e != null)
          break label248;
        localStringBuilder.append("null");
      }
      label147: if (y())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("locations:");
        if (this.f != null)
          break label260;
        localStringBuilder.append("null");
      }
      label185: if (B())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("traffic:");
        if (this.g != null)
          break label272;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label248: localStringBuilder.append(this.e);
      break label147;
      label260: localStringBuilder.append(this.f);
      break label185;
      label272: localStringBuilder.append(this.g);
    }
  }

  public int u()
  {
    if (this.f == null)
      return 0;
    return this.f.size();
  }

  public Iterator<aw> v()
  {
    if (this.f == null)
      return null;
    return this.f.iterator();
  }

  public List<aw> w()
  {
    return this.f;
  }

  public void x()
  {
    this.f = null;
  }

  public boolean y()
  {
    return this.f != null;
  }

  public be z()
  {
    return this.g;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bd
 * JD-Core Version:    0.6.0
 */