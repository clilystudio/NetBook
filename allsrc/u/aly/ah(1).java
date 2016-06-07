package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ah
  implements Serializable, Cloneable, bz<ah, ah.e>
{
  public static final Map<ah.e, cl> b;
  private static final bR c = new bR("ActivateMsg");
  private static final bK d = new bK("ts", 10, 1);
  private static final Map<Class<? extends bT>, bU> e;
  public long a;
  private byte g = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    e = localHashMap;
    localHashMap.put(bV.class, new c(0));
    e.put(bW.class, new e(0));
    EnumMap localEnumMap = new EnumMap(ah.e.class);
    localEnumMap.put(ah.e.a, new cl("ts", 1, new cm(10)));
    b = Collections.unmodifiableMap(localEnumMap);
    cl.a(ah.class, b);
  }

  public ah()
  {
  }

  public ah(long paramLong)
  {
    this();
    this.a = paramLong;
    a(true);
  }

  public ah(ah paramah)
  {
    this.g = paramah.g;
    this.a = paramah.a;
  }

  public ah.e a(int paramInt)
  {
    return ah.e.a(paramInt);
  }

  public ah a()
  {
    return new ah(this);
  }

  public ah a(long paramLong)
  {
    this.a = paramLong;
    a(true);
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)e.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    this.g = a.a(this.g, 0, paramBoolean);
  }

  public void b()
  {
    a(false);
    this.a = 0L;
  }

  public void b(bN parambN)
  {
    ((bU)e.get(parambN.s())).a().b(parambN, this);
  }

  public long c()
  {
    return this.a;
  }

  public void d()
  {
    this.g = a.b(this.g, 0);
  }

  public boolean e()
  {
    return a.a(this.g, 0);
  }

  public void f()
  {
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ActivateMsg(");
    localStringBuilder.append("ts:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ah
 * JD-Core Version:    0.6.0
 */