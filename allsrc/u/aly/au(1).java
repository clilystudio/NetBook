package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class au
  implements Serializable, Cloneable, bz<au, au.e>
{
  public static final Map<au.e, cl> d;
  private static final bR e = new bR("ImprintValue");
  private static final bK f = new bK("value", 11, 1);
  private static final bK g = new bK("ts", 10, 2);
  private static final bK h = new bK("guid", 11, 3);
  private static final Map<Class<? extends bT>, bU> i;
  public String a;
  public long b;
  public String c;
  private byte k = 0;
  private au.e[] l;

  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put(bV.class, new Q(0));
    i.put(bW.class, new S(0));
    EnumMap localEnumMap = new EnumMap(au.e.class);
    localEnumMap.put(au.e.a, new cl("value", 2, new cm(11)));
    localEnumMap.put(au.e.b, new cl("ts", 1, new cm(10)));
    localEnumMap.put(au.e.c, new cl("guid", 1, new cm(11)));
    d = Collections.unmodifiableMap(localEnumMap);
    cl.a(au.class, d);
  }

  public au()
  {
    au.e[] arrayOfe = new au.e[1];
    arrayOfe[0] = au.e.a;
    this.l = arrayOfe;
  }

  public au(long paramLong, String paramString)
  {
    this();
    this.b = paramLong;
    b(true);
    this.c = paramString;
  }

  public au(au paramau)
  {
    au.e[] arrayOfe = new au.e[1];
    arrayOfe[0] = au.e.a;
    this.l = arrayOfe;
    this.k = paramau.k;
    if (paramau.e())
      this.a = paramau.a;
    this.b = paramau.b;
    if (paramau.l())
      this.c = paramau.c;
  }

  public au.e a(int paramInt)
  {
    return au.e.a(paramInt);
  }

  public au a()
  {
    return new au(this);
  }

  public au a(long paramLong)
  {
    this.b = paramLong;
    b(true);
    return this;
  }

  public au a(String paramString)
  {
    this.a = paramString;
    return this;
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

  public au b(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public void b()
  {
    this.a = null;
    b(false);
    this.b = 0L;
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

  public String c()
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

  public boolean e()
  {
    return this.a != null;
  }

  public long f()
  {
    return this.b;
  }

  public void h()
  {
    this.k = a.b(this.k, 0);
  }

  public boolean i()
  {
    return a.a(this.k, 0);
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

  public void m()
  {
    if (this.c == null)
      throw new cz("Required field 'guid' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ImprintValue(");
    int j = 1;
    if (e())
    {
      localStringBuilder.append("value:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        j = 0;
      }
    }
    else
    {
      if (j == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("guid:");
      if (this.c != null)
        break label121;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label121: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.au
 * JD-Core Version:    0.6.0
 */