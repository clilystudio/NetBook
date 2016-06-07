package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bb
  implements Serializable, Cloneable, bz<bb, bb.e>
{
  public static final Map<bb.e, cl> d;
  private static final bR e = new bR("Response");
  private static final bK f = new bK("resp_code", 8, 1);
  private static final bK g = new bK("msg", 11, 2);
  private static final bK h = new bK("imprint", 12, 3);
  private static final Map<Class<? extends bT>, bU> i;
  public int a;
  public String b;
  public at c;
  private byte k = 0;
  private bb.e[] l;

  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put(bV.class, new aN(0));
    i.put(bW.class, new aP(0));
    EnumMap localEnumMap = new EnumMap(bb.e.class);
    localEnumMap.put(bb.e.a, new cl("resp_code", 1, new cm(8)));
    localEnumMap.put(bb.e.b, new cl("msg", 2, new cm(11)));
    localEnumMap.put(bb.e.c, new cl("imprint", 2, new cq(12, at.class)));
    d = Collections.unmodifiableMap(localEnumMap);
    cl.a(bb.class, d);
  }

  public bb()
  {
    bb.e[] arrayOfe = new bb.e[2];
    arrayOfe[0] = bb.e.b;
    arrayOfe[1] = bb.e.c;
    this.l = arrayOfe;
  }

  public bb(int paramInt)
  {
    this();
    this.a = paramInt;
    a(true);
  }

  public bb(bb parambb)
  {
    bb.e[] arrayOfe = new bb.e[2];
    arrayOfe[0] = bb.e.b;
    arrayOfe[1] = bb.e.c;
    this.l = arrayOfe;
    this.k = parambb.k;
    this.a = parambb.a;
    if (parambb.i())
      this.b = parambb.b;
    if (parambb.l())
      this.c = new at(parambb.c);
  }

  public bb a()
  {
    return new bb(this);
  }

  public bb a(int paramInt)
  {
    this.a = paramInt;
    a(true);
    return this;
  }

  public bb a(String paramString)
  {
    this.b = paramString;
    return this;
  }

  public bb a(at paramat)
  {
    this.c = paramat;
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)i.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    this.k = a.a(this.k, 0, paramBoolean);
  }

  public void b()
  {
    a(false);
    this.a = 0;
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
    return this.a;
  }

  public bb.e c(int paramInt)
  {
    return bb.e.a(paramInt);
  }

  public void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.c = null;
  }

  public void d()
  {
    this.k = a.b(this.k, 0);
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

  public at j()
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
    if (this.c != null)
      this.c.n();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Response(");
    localStringBuilder.append("resp_code:");
    localStringBuilder.append(this.a);
    if (i())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("msg:");
      if (this.b == null)
        localStringBuilder.append("null");
    }
    else if (l())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("imprint:");
      if (this.c != null)
        break label120;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.b);
      break;
      label120: localStringBuilder.append(this.c);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bb
 * JD-Core Version:    0.6.0
 */