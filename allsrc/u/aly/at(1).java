package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class at
  implements Serializable, Cloneable, bz<at, at.e>
{
  public static final Map<at.e, cl> d;
  private static final bR e = new bR("Imprint");
  private static final bK f = new bK("property", 13, 1);
  private static final bK g = new bK("version", 8, 2);
  private static final bK h = new bK("checksum", 11, 3);
  private static final Map<Class<? extends bT>, bU> i;
  public Map<String, au> a;
  public int b;
  public String c;
  private byte k = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put(bV.class, new M(0));
    i.put(bW.class, new O(0));
    EnumMap localEnumMap = new EnumMap(at.e.class);
    localEnumMap.put(at.e.a, new cl("property", 1, new co(13, new cm(11), new cq(12, au.class))));
    localEnumMap.put(at.e.b, new cl("version", 1, new cm(8)));
    localEnumMap.put(at.e.c, new cl("checksum", 1, new cm(11)));
    d = Collections.unmodifiableMap(localEnumMap);
    cl.a(at.class, d);
  }

  public at()
  {
  }

  public at(Map<String, au> paramMap, int paramInt, String paramString)
  {
    this();
    this.a = paramMap;
    this.b = paramInt;
    b(true);
    this.c = paramString;
  }

  public at(at paramat)
  {
    this.k = paramat.k;
    HashMap localHashMap;
    Iterator localIterator;
    if (paramat.f())
    {
      localHashMap = new HashMap();
      localIterator = paramat.a.entrySet().iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.a = localHashMap;
        this.b = paramat.b;
        if (paramat.m())
          this.c = paramat.c;
        return;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put((String)localEntry.getKey(), new au((au)localEntry.getValue()));
    }
  }

  public at a()
  {
    return new at(this);
  }

  public at a(int paramInt)
  {
    this.b = paramInt;
    b(true);
    return this;
  }

  public at a(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public at a(Map<String, au> paramMap)
  {
    this.a = paramMap;
    return this;
  }

  public void a(String paramString, au paramau)
  {
    if (this.a == null)
      this.a = new HashMap();
    this.a.put(paramString, paramau);
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
    this.b = 0;
    this.c = null;
  }

  public void b(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    this.k = a.a(this.k, 0, paramBoolean);
  }

  public int c()
  {
    if (this.a == null)
      return 0;
    return this.a.size();
  }

  public at.e c(int paramInt)
  {
    return at.e.a(paramInt);
  }

  public void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.c = null;
  }

  public Map<String, au> d()
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
    return this.b;
  }

  public void i()
  {
    this.k = a.b(this.k, 0);
  }

  public boolean j()
  {
    return a.a(this.k, 0);
  }

  public String k()
  {
    return this.c;
  }

  public void l()
  {
    this.c = null;
  }

  public boolean m()
  {
    return this.c != null;
  }

  public void n()
  {
    if (this.a == null)
      throw new cz("Required field 'property' was not present! Struct: " + toString());
    if (this.c == null)
      throw new cz("Required field 'checksum' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Imprint(");
    localStringBuilder.append("property:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("checksum:");
      if (this.c != null)
        break label115;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label115: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.at
 * JD-Core Version:    0.6.0
 */