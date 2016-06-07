package u.aly;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class as
  implements Serializable, Cloneable, bz<as, as.e>
{
  public static final Map<as.e, cl> d;
  private static final bR e = new bR("IdTracking");
  private static final bK f = new bK("snapshots", 13, 1);
  private static final bK g = new bK("journals", 15, 2);
  private static final bK h = new bK("checksum", 11, 3);
  private static final Map<Class<? extends bT>, bU> i;
  public Map<String, ar> a;
  public List<aq> b;
  public String c;
  private as.e[] j;

  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put(bV.class, new I(0));
    i.put(bW.class, new K(0));
    EnumMap localEnumMap = new EnumMap(as.e.class);
    localEnumMap.put(as.e.a, new cl("snapshots", 1, new co(13, new cm(11), new cq(12, ar.class))));
    localEnumMap.put(as.e.b, new cl("journals", 2, new cn(15, new cq(12, aq.class))));
    localEnumMap.put(as.e.c, new cl("checksum", 2, new cm(11)));
    d = Collections.unmodifiableMap(localEnumMap);
    cl.a(as.class, d);
  }

  public as()
  {
    as.e[] arrayOfe = new as.e[2];
    arrayOfe[0] = as.e.b;
    arrayOfe[1] = as.e.c;
    this.j = arrayOfe;
  }

  public as(Map<String, ar> paramMap)
  {
    this();
    this.a = paramMap;
  }

  public as(as paramas)
  {
    as.e[] arrayOfe = new as.e[2];
    arrayOfe[0] = as.e.b;
    arrayOfe[1] = as.e.c;
    this.j = arrayOfe;
    HashMap localHashMap;
    Iterator localIterator1;
    ArrayList localArrayList;
    Iterator localIterator2;
    if (paramas.f())
    {
      localHashMap = new HashMap();
      localIterator1 = paramas.a.entrySet().iterator();
      if (!localIterator1.hasNext())
        this.a = localHashMap;
    }
    else if (paramas.l())
    {
      localArrayList = new ArrayList();
      localIterator2 = paramas.b.iterator();
    }
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        this.b = localArrayList;
        if (paramas.o())
          this.c = paramas.c;
        return;
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        localHashMap.put((String)localEntry.getKey(), new ar((ar)localEntry.getValue()));
        break;
      }
      localArrayList.add(new aq((aq)localIterator2.next()));
    }
  }

  public as.e a(int paramInt)
  {
    return as.e.a(paramInt);
  }

  public as a()
  {
    return new as(this);
  }

  public as a(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public as a(List<aq> paramList)
  {
    this.b = paramList;
    return this;
  }

  public as a(Map<String, ar> paramMap)
  {
    this.a = paramMap;
    return this;
  }

  public void a(String paramString, ar paramar)
  {
    if (this.a == null)
      this.a = new HashMap();
    this.a.put(paramString, paramar);
  }

  public void a(aq paramaq)
  {
    if (this.b == null)
      this.b = new ArrayList();
    this.b.add(paramaq);
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
    this.b = null;
    this.c = null;
  }

  public void b(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.b = null;
  }

  public int c()
  {
    if (this.a == null)
      return 0;
    return this.a.size();
  }

  public void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.c = null;
  }

  public Map<String, ar> d()
  {
    return this.a;
  }

  public void e()
  {
    this.a = null;
  }

  public boolean f()
  {
    return this.a != null;
  }

  public int h()
  {
    if (this.b == null)
      return 0;
    return this.b.size();
  }

  public Iterator<aq> i()
  {
    if (this.b == null)
      return null;
    return this.b.iterator();
  }

  public List<aq> j()
  {
    return this.b;
  }

  public void k()
  {
    this.b = null;
  }

  public boolean l()
  {
    return this.b != null;
  }

  public String m()
  {
    return this.c;
  }

  public void n()
  {
    this.c = null;
  }

  public boolean o()
  {
    return this.c != null;
  }

  public void p()
  {
    if (this.a == null)
      throw new cz("Required field 'snapshots' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdTracking(");
    localStringBuilder.append("snapshots:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (l())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("journals:");
        if (this.b != null)
          break label135;
        localStringBuilder.append("null");
      }
      label72: if (o())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("checksum:");
        if (this.c != null)
          break label147;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label135: localStringBuilder.append(this.b);
      break label72;
      label147: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.as
 * JD-Core Version:    0.6.0
 */