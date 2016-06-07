package u.aly;

import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

public class az extends cj<az, az.a>
{
  public static final Map<az.a, cl> a;
  private static final bR d = new bR("PropertyValue");
  private static final bK e = new bK("string_value", 11, 1);
  private static final bK f = new bK("long_value", 10, 2);

  static
  {
    EnumMap localEnumMap = new EnumMap(az.a.class);
    localEnumMap.put(az.a.a, new cl("string_value", 3, new cm(11)));
    localEnumMap.put(az.a.b, new cl("long_value", 3, new cm(10)));
    a = Collections.unmodifiableMap(localEnumMap);
    cl.a(az.class, a);
  }

  public az()
  {
  }

  public az(az.a parama, Object paramObject)
  {
    super(parama, paramObject);
  }

  public az(az paramaz)
  {
    super(paramaz);
  }

  public static az a(long paramLong)
  {
    az localaz = new az();
    localaz.b(paramLong);
    return localaz;
  }

  public static az a(String paramString)
  {
    az localaz = new az();
    localaz.b(paramString);
    return localaz;
  }

  protected Object a(bN parambN, bK parambK)
  {
    az.a locala = az.a.a(parambK.c);
    String str = null;
    if (locala != null);
    switch (i()[locala.ordinal()])
    {
    default:
      throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
    case 1:
      if (parambK.b == e.b)
      {
        str = parambN.p();
        return str;
      }
      bP.a(parambN, parambK.b);
      return null;
    case 2:
    }
    if (parambK.b == f.b)
      return Long.valueOf(parambN.n());
    bP.a(parambN, parambK.b);
    return null;
  }

  protected Object a(bN parambN, short paramShort)
  {
    az.a locala = az.a.a(paramShort);
    if (locala != null)
    {
      switch (i()[locala.ordinal()])
      {
      default:
        throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
      case 1:
        return parambN.p();
      case 2:
      }
      return Long.valueOf(parambN.n());
    }
    throw new cz("Couldn't find a field with field id " + paramShort);
  }

  public az.a a(int paramInt)
  {
    return az.a.a(paramInt);
  }

  protected az.a a(short paramShort)
  {
    return az.a.b(paramShort);
  }

  public az a()
  {
    return new az(this);
  }

  protected bK a(az.a parama)
  {
    switch (i()[parama.ordinal()])
    {
    default:
      throw new IllegalArgumentException("Unknown field id " + parama);
    case 1:
      return e;
    case 2:
    }
    return f;
  }

  protected void a(az.a parama, Object paramObject)
  {
    switch (i()[parama.ordinal()])
    {
    default:
      throw new IllegalArgumentException("Unknown field id " + parama);
    case 1:
      if ((paramObject instanceof String))
        break;
      throw new ClassCastException("Was expecting value of type String for field 'string_value', but got " + paramObject.getClass().getSimpleName());
    case 2:
      if ((paramObject instanceof Long))
        break;
      throw new ClassCastException("Was expecting value of type Long for field 'long_value', but got " + paramObject.getClass().getSimpleName());
    }
  }

  public boolean a(az paramaz)
  {
    return (paramaz != null) && (j() == paramaz.j()) && (k().equals(paramaz.k()));
  }

  public int b(az paramaz)
  {
    int i = bB.a((Comparable)j(), (Comparable)paramaz.j());
    if (i == 0)
      i = bB.a(k(), paramaz.k());
    return i;
  }

  public void b(long paramLong)
  {
    this.c = az.a.b;
    this.b = Long.valueOf(paramLong);
  }

  public void b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.c = az.a.a;
    this.b = paramString;
  }

  protected bR c()
  {
    return d;
  }

  protected void c(bN parambN)
  {
    switch (i()[((az.a)this.c).ordinal()])
    {
    default:
      throw new IllegalStateException("Cannot write union with unknown field " + this.c);
    case 1:
      parambN.a((String)this.b);
      return;
    case 2:
    }
    parambN.a(((Long)this.b).longValue());
  }

  public String d()
  {
    if (j() == az.a.a)
      return (String)k();
    throw new RuntimeException("Cannot get field 'string_value' because union is currently set to " + a((az.a)j()).a);
  }

  protected void d(bN parambN)
  {
    switch (i()[((az.a)this.c).ordinal()])
    {
    default:
      throw new IllegalStateException("Cannot write union with unknown field " + this.c);
    case 1:
      parambN.a((String)this.b);
      return;
    case 2:
    }
    parambN.a(((Long)this.b).longValue());
  }

  public long e()
  {
    if (j() == az.a.b)
      return ((Long)k()).longValue();
    throw new RuntimeException("Cannot get field 'long_value' because union is currently set to " + a((az.a)j()).a);
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof az))
      return a((az)paramObject);
    return false;
  }

  public boolean f()
  {
    return this.c == az.a.a;
  }

  public boolean h()
  {
    return this.c == az.a.b;
  }

  public int hashCode()
  {
    return 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.az
 * JD-Core Version:    0.6.0
 */