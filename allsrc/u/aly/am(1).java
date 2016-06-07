package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class am
  implements Serializable, Cloneable, bz<am, am.e>
{
  public static final Map<am.e, cl> d;
  private static final bR e = new bR("Error");
  private static final bK f = new bK("ts", 10, 1);
  private static final bK g = new bK("context", 11, 2);
  private static final bK h = new bK("source", 8, 3);
  private static final Map<Class<? extends bT>, bU> i;
  public long a;
  public String b;
  public an c;
  private byte k = 0;
  private am.e[] l;

  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put(bV.class, new s(0));
    i.put(bW.class, new u(0));
    EnumMap localEnumMap = new EnumMap(am.e.class);
    localEnumMap.put(am.e.a, new cl("ts", 1, new cm(10)));
    localEnumMap.put(am.e.b, new cl("context", 1, new cm(11)));
    localEnumMap.put(am.e.c, new cl("source", 2, new ck(16, an.class)));
    d = Collections.unmodifiableMap(localEnumMap);
    cl.a(am.class, d);
  }

  public am()
  {
    am.e[] arrayOfe = new am.e[1];
    arrayOfe[0] = am.e.c;
    this.l = arrayOfe;
  }

  public am(long paramLong, String paramString)
  {
    this();
    this.a = paramLong;
    b(true);
    this.b = paramString;
  }

  public am(am paramam)
  {
    am.e[] arrayOfe = new am.e[1];
    arrayOfe[0] = am.e.c;
    this.l = arrayOfe;
    this.k = paramam.k;
    this.a = paramam.a;
    if (paramam.i())
      this.b = paramam.b;
    if (paramam.l())
      this.c = paramam.c;
  }

  public am.e a(int paramInt)
  {
    return am.e.a(paramInt);
  }

  public am a()
  {
    return new am(this);
  }

  public am a(long paramLong)
  {
    this.a = paramLong;
    b(true);
    return this;
  }

  public am a(String paramString)
  {
    this.b = paramString;
    return this;
  }

  public am a(an paraman)
  {
    this.c = paraman;
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().a(parambN, this);
  }

  public void b()
  {
    b(false);
    this.a = 0L;
    this.b = null;
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

  public long c()
  {
    return this.a;
  }

  public void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.b = null;
  }

  public void d()
  {
    this.k = a.b(this.k, 0);
  }

  public void d(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.c = null;
  }

  public boolean e()
  {
    return a.a(this.k, 0);
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

  public an j()
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

  public void m()
  {
    if (this.b == null)
      throw new cz("Required field 'context' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Error(");
    localStringBuilder.append("ts:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("context:");
    if (this.b == null)
    {
      localStringBuilder.append("null");
      if (l())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("source:");
        if (this.c != null)
          break label113;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.b);
      break;
      label113: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.am
 * JD-Core Version:    0.6.0
 */