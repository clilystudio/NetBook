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

public class ao
  implements Serializable, Cloneable, bz<ao, ao.e>
{
  public static final Map<ao.e, cl> f;
  private static final bR g = new bR("Event");
  private static final bK h = new bK("name", 11, 1);
  private static final bK i = new bK("properties", 13, 2);
  private static final bK j = new bK("duration", 10, 3);
  private static final bK k = new bK("acc", 8, 4);
  private static final bK l = new bK("ts", 10, 5);
  private static final Map<Class<? extends bT>, bU> m;
  public String a;
  public Map<String, az> b;
  public long c;
  public int d;
  public long e;
  private byte q = 0;
  private ao.e[] r;

  static
  {
    HashMap localHashMap = new HashMap();
    m = localHashMap;
    localHashMap.put(bV.class, new w(0));
    m.put(bW.class, new y(0));
    EnumMap localEnumMap = new EnumMap(ao.e.class);
    localEnumMap.put(ao.e.a, new cl("name", 1, new cm(11)));
    localEnumMap.put(ao.e.b, new cl("properties", 1, new co(13, new cm(11), new cq(12, az.class))));
    localEnumMap.put(ao.e.c, new cl("duration", 2, new cm(10)));
    localEnumMap.put(ao.e.d, new cl("acc", 2, new cm(8)));
    localEnumMap.put(ao.e.e, new cl("ts", 1, new cm(10)));
    f = Collections.unmodifiableMap(localEnumMap);
    cl.a(ao.class, f);
  }

  public ao()
  {
    ao.e[] arrayOfe = new ao.e[2];
    arrayOfe[0] = ao.e.c;
    arrayOfe[1] = ao.e.d;
    this.r = arrayOfe;
  }

  public ao(String paramString, Map<String, az> paramMap, long paramLong)
  {
    this();
    this.a = paramString;
    this.b = paramMap;
    this.e = paramLong;
    e(true);
  }

  public ao(ao paramao)
  {
    ao.e[] arrayOfe = new ao.e[2];
    arrayOfe[0] = ao.e.c;
    arrayOfe[1] = ao.e.d;
    this.r = arrayOfe;
    this.q = paramao.q;
    if (paramao.e())
      this.a = paramao.a;
    HashMap localHashMap;
    Iterator localIterator;
    if (paramao.j())
    {
      localHashMap = new HashMap();
      localIterator = paramao.b.entrySet().iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.b = localHashMap;
        this.c = paramao.c;
        this.d = paramao.d;
        this.e = paramao.e;
        return;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localHashMap.put((String)localEntry.getKey(), new az((az)localEntry.getValue()));
    }
  }

  public ao a()
  {
    return new ao(this);
  }

  public ao a(int paramInt)
  {
    this.d = paramInt;
    d(true);
    return this;
  }

  public ao a(long paramLong)
  {
    this.c = paramLong;
    c(true);
    return this;
  }

  public ao a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public ao a(Map<String, az> paramMap)
  {
    this.b = paramMap;
    return this;
  }

  public void a(String paramString, az paramaz)
  {
    if (this.b == null)
      this.b = new HashMap();
    this.b.put(paramString, paramaz);
  }

  public void a(bN parambN)
  {
    ((bU)m.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a = null;
  }

  public ao b(long paramLong)
  {
    this.e = paramLong;
    e(true);
    return this;
  }

  public void b()
  {
    this.a = null;
    this.b = null;
    c(false);
    this.c = 0L;
    d(false);
    this.d = 0;
    e(false);
    this.e = 0L;
  }

  public void b(bN parambN)
  {
    ((bU)m.get(parambN.s())).a().b(parambN, this);
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

  public ao.e c(int paramInt)
  {
    return ao.e.a(paramInt);
  }

  public void c(boolean paramBoolean)
  {
    this.q = a.a(this.q, 0, paramBoolean);
  }

  public void d()
  {
    this.a = null;
  }

  public void d(boolean paramBoolean)
  {
    this.q = a.a(this.q, 1, paramBoolean);
  }

  public void e(boolean paramBoolean)
  {
    this.q = a.a(this.q, 2, paramBoolean);
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

  public Map<String, az> h()
  {
    return this.b;
  }

  public void i()
  {
    this.b = null;
  }

  public boolean j()
  {
    return this.b != null;
  }

  public long k()
  {
    return this.c;
  }

  public void l()
  {
    this.q = a.b(this.q, 0);
  }

  public boolean m()
  {
    return a.a(this.q, 0);
  }

  public int n()
  {
    return this.d;
  }

  public void o()
  {
    this.q = a.b(this.q, 1);
  }

  public boolean p()
  {
    return a.a(this.q, 1);
  }

  public long q()
  {
    return this.e;
  }

  public void r()
  {
    this.q = a.b(this.q, 2);
  }

  public boolean s()
  {
    return a.a(this.q, 2);
  }

  public void t()
  {
    if (this.a == null)
      throw new cz("Required field 'name' was not present! Struct: " + toString());
    if (this.b == null)
      throw new cz("Required field 'properties' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Event(");
    localStringBuilder.append("name:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("properties:");
      if (this.b != null)
        break label179;
      localStringBuilder.append("null");
    }
    while (true)
    {
      if (m())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("duration:");
        localStringBuilder.append(this.c);
      }
      if (p())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("acc:");
        localStringBuilder.append(this.d);
      }
      localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.e);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label179: localStringBuilder.append(this.b);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ao
 * JD-Core Version:    0.6.0
 */