package u.aly;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class av
  implements Serializable, Cloneable, bz<av, av.e>
{
  public static final Map<av.e, cl> e;
  private static final bR f = new bR("InstantMsg");
  private static final bK g = new bK("id", 11, 1);
  private static final bK h = new bK("errors", 15, 2);
  private static final bK i = new bK("events", 15, 3);
  private static final bK j = new bK("game_events", 15, 4);
  private static final Map<Class<? extends bT>, bU> k;
  public String a;
  public List<am> b;
  public List<ao> c;
  public List<ao> d;
  private av.e[] l;

  static
  {
    HashMap localHashMap = new HashMap();
    k = localHashMap;
    localHashMap.put(bV.class, new U(0));
    k.put(bW.class, new W(0));
    EnumMap localEnumMap = new EnumMap(av.e.class);
    localEnumMap.put(av.e.a, new cl("id", 1, new cm(11)));
    localEnumMap.put(av.e.b, new cl("errors", 2, new cn(15, new cq(12, am.class))));
    localEnumMap.put(av.e.c, new cl("events", 2, new cn(15, new cq(12, ao.class))));
    localEnumMap.put(av.e.d, new cl("game_events", 2, new cn(15, new cq(12, ao.class))));
    e = Collections.unmodifiableMap(localEnumMap);
    cl.a(av.class, e);
  }

  public av()
  {
    av.e[] arrayOfe = new av.e[3];
    arrayOfe[0] = av.e.b;
    arrayOfe[1] = av.e.c;
    arrayOfe[2] = av.e.d;
    this.l = arrayOfe;
  }

  public av(String paramString)
  {
    this();
    this.a = paramString;
  }

  public av(av paramav)
  {
    av.e[] arrayOfe = new av.e[3];
    arrayOfe[0] = av.e.b;
    arrayOfe[1] = av.e.c;
    arrayOfe[2] = av.e.d;
    this.l = arrayOfe;
    if (paramav.e())
      this.a = paramav.a;
    ArrayList localArrayList1;
    Iterator localIterator1;
    ArrayList localArrayList2;
    Iterator localIterator2;
    label115: ArrayList localArrayList3;
    Iterator localIterator3;
    if (paramav.k())
    {
      localArrayList1 = new ArrayList();
      localIterator1 = paramav.b.iterator();
      if (!localIterator1.hasNext())
        this.b = localArrayList1;
    }
    else
    {
      if (paramav.p())
      {
        localArrayList2 = new ArrayList();
        localIterator2 = paramav.c.iterator();
        if (localIterator2.hasNext())
          break label202;
        this.c = localArrayList2;
      }
      if (paramav.u())
      {
        localArrayList3 = new ArrayList();
        localIterator3 = paramav.d.iterator();
      }
    }
    while (true)
    {
      if (!localIterator3.hasNext())
      {
        this.d = localArrayList3;
        return;
        localArrayList1.add(new am((am)localIterator1.next()));
        break;
        label202: localArrayList2.add(new ao((ao)localIterator2.next()));
        break label115;
      }
      localArrayList3.add(new ao((ao)localIterator3.next()));
    }
  }

  public av.e a(int paramInt)
  {
    return av.e.a(paramInt);
  }

  public av a()
  {
    return new av(this);
  }

  public av a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public av a(List<am> paramList)
  {
    this.b = paramList;
    return this;
  }

  public void a(am paramam)
  {
    if (this.b == null)
      this.b = new ArrayList();
    this.b.add(paramam);
  }

  public void a(ao paramao)
  {
    if (this.c == null)
      this.c = new ArrayList();
    this.c.add(paramao);
  }

  public void a(bN parambN)
  {
    ((bU)k.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a = null;
  }

  public av b(List<ao> paramList)
  {
    this.c = paramList;
    return this;
  }

  public void b()
  {
    this.a = null;
    this.b = null;
    this.c = null;
    this.d = null;
  }

  public void b(ao paramao)
  {
    if (this.d == null)
      this.d = new ArrayList();
    this.d.add(paramao);
  }

  public void b(bN parambN)
  {
    ((bU)k.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.b = null;
  }

  public String c()
  {
    return this.a;
  }

  public av c(List<ao> paramList)
  {
    this.d = paramList;
    return this;
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

  public boolean e()
  {
    return this.a != null;
  }

  public int f()
  {
    if (this.b == null)
      return 0;
    return this.b.size();
  }

  public Iterator<am> h()
  {
    if (this.b == null)
      return null;
    return this.b.iterator();
  }

  public List<am> i()
  {
    return this.b;
  }

  public void j()
  {
    this.b = null;
  }

  public boolean k()
  {
    return this.b != null;
  }

  public int l()
  {
    if (this.c == null)
      return 0;
    return this.c.size();
  }

  public Iterator<ao> m()
  {
    if (this.c == null)
      return null;
    return this.c.iterator();
  }

  public List<ao> n()
  {
    return this.c;
  }

  public void o()
  {
    this.c = null;
  }

  public boolean p()
  {
    return this.c != null;
  }

  public int q()
  {
    if (this.d == null)
      return 0;
    return this.d.size();
  }

  public Iterator<ao> r()
  {
    if (this.d == null)
      return null;
    return this.d.iterator();
  }

  public List<ao> s()
  {
    return this.d;
  }

  public void t()
  {
    this.d = null;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("InstantMsg(");
    localStringBuilder.append("id:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("errors:");
        if (this.b != null)
          break label171;
        localStringBuilder.append("null");
      }
      label70: if (p())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("events:");
        if (this.c != null)
          break label183;
        localStringBuilder.append("null");
      }
      label108: if (u())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("game_events:");
        if (this.d != null)
          break label195;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label171: localStringBuilder.append(this.b);
      break label70;
      label183: localStringBuilder.append(this.c);
      break label108;
      label195: localStringBuilder.append(this.d);
    }
  }

  public boolean u()
  {
    return this.d != null;
  }

  public void v()
  {
    if (this.a == null)
      throw new cz("Required field 'id' was not present! Struct: " + toString());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.av
 * JD-Core Version:    0.6.0
 */