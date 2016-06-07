package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class aq
  implements Serializable, Cloneable, bz<aq, aq.e>
{
  public static final Map<aq.e, cl> e;
  private static final bR f = new bR("IdJournal");
  private static final bK g = new bK("domain", 11, 1);
  private static final bK h = new bK("old_id", 11, 2);
  private static final bK i = new bK("new_id", 11, 3);
  private static final bK j = new bK("ts", 10, 4);
  private static final Map<Class<? extends bT>, bU> k;
  public String a;
  public String b;
  public String c;
  public long d;
  private byte m = 0;
  private aq.e[] n;

  static
  {
    HashMap localHashMap = new HashMap();
    k = localHashMap;
    localHashMap.put(bV.class, new A(0));
    k.put(bW.class, new C(0));
    EnumMap localEnumMap = new EnumMap(aq.e.class);
    localEnumMap.put(aq.e.a, new cl("domain", 1, new cm(11)));
    localEnumMap.put(aq.e.b, new cl("old_id", 2, new cm(11)));
    localEnumMap.put(aq.e.c, new cl("new_id", 1, new cm(11)));
    localEnumMap.put(aq.e.d, new cl("ts", 1, new cm(10)));
    e = Collections.unmodifiableMap(localEnumMap);
    cl.a(aq.class, e);
  }

  public aq()
  {
    aq.e[] arrayOfe = new aq.e[1];
    arrayOfe[0] = aq.e.b;
    this.n = arrayOfe;
  }

  public aq(String paramString1, String paramString2, long paramLong)
  {
    this();
    this.a = paramString1;
    this.c = paramString2;
    this.d = paramLong;
    d(true);
  }

  public aq(aq paramaq)
  {
    aq.e[] arrayOfe = new aq.e[1];
    arrayOfe[0] = aq.e.b;
    this.n = arrayOfe;
    this.m = paramaq.m;
    if (paramaq.e())
      this.a = paramaq.a;
    if (paramaq.i())
      this.b = paramaq.b;
    if (paramaq.l())
      this.c = paramaq.c;
    this.d = paramaq.d;
  }

  public aq.e a(int paramInt)
  {
    return aq.e.a(paramInt);
  }

  public aq a()
  {
    return new aq(this);
  }

  public aq a(long paramLong)
  {
    this.d = paramLong;
    d(true);
    return this;
  }

  public aq a(String paramString)
  {
    this.a = paramString;
    return this;
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

  public aq b(String paramString)
  {
    this.b = paramString;
    return this;
  }

  public void b()
  {
    this.a = null;
    this.b = null;
    this.c = null;
    d(false);
    this.d = 0L;
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

  public aq c(String paramString)
  {
    this.c = paramString;
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
    this.m = a.a(this.m, 0, paramBoolean);
  }

  public boolean e()
  {
    return this.a != null;
  }

  public String f()
  {
    return this.b;
  }

  public void h()
  {
    this.b = null;
  }

  public boolean i()
  {
    return this.b != null;
  }

  public String j()
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

  public long m()
  {
    return this.d;
  }

  public void n()
  {
    this.m = a.b(this.m, 0);
  }

  public boolean o()
  {
    return a.a(this.m, 0);
  }

  public void p()
  {
    if (this.a == null)
      throw new cz("Required field 'domain' was not present! Struct: " + toString());
    if (this.c == null)
      throw new cz("Required field 'new_id' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdJournal(");
    localStringBuilder.append("domain:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("old_id:");
        if (this.b != null)
          break label141;
        localStringBuilder.append("null");
      }
      label66: localStringBuilder.append(", ");
      localStringBuilder.append("new_id:");
      if (this.c != null)
        break label153;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.d);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label141: localStringBuilder.append(this.b);
      break label66;
      label153: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.aq
 * JD-Core Version:    0.6.0
 */