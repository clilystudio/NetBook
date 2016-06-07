package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bg
  implements Serializable, Cloneable, bz<bg, bg.e>
{
  public static final Map<bg.e, cl> e;
  private static final bR f = new bR("UserInfo");
  private static final bK g = new bK("gender", 8, 1);
  private static final bK h = new bK("age", 8, 2);
  private static final bK i = new bK("id", 11, 3);
  private static final bK j = new bK("source", 11, 4);
  private static final Map<Class<? extends bT>, bU> k;
  public ap a;
  public int b;
  public String c;
  public String d;
  private byte m = 0;
  private bg.e[] n;

  static
  {
    HashMap localHashMap = new HashMap();
    k = localHashMap;
    localHashMap.put(bV.class, new bl(0));
    k.put(bW.class, new bn(0));
    EnumMap localEnumMap = new EnumMap(bg.e.class);
    localEnumMap.put(bg.e.a, new cl("gender", 2, new ck(16, ap.class)));
    localEnumMap.put(bg.e.b, new cl("age", 2, new cm(8)));
    localEnumMap.put(bg.e.c, new cl("id", 2, new cm(11)));
    localEnumMap.put(bg.e.d, new cl("source", 2, new cm(11)));
    e = Collections.unmodifiableMap(localEnumMap);
    cl.a(bg.class, e);
  }

  public bg()
  {
    bg.e[] arrayOfe = new bg.e[4];
    arrayOfe[0] = bg.e.a;
    arrayOfe[1] = bg.e.b;
    arrayOfe[2] = bg.e.c;
    arrayOfe[3] = bg.e.d;
    this.n = arrayOfe;
  }

  public bg(bg parambg)
  {
    bg.e[] arrayOfe = new bg.e[4];
    arrayOfe[0] = bg.e.a;
    arrayOfe[1] = bg.e.b;
    arrayOfe[2] = bg.e.c;
    arrayOfe[3] = bg.e.d;
    this.n = arrayOfe;
    this.m = parambg.m;
    if (parambg.e())
      this.a = parambg.a;
    this.b = parambg.b;
    if (parambg.l())
      this.c = parambg.c;
    if (parambg.o())
      this.d = parambg.d;
  }

  public bg a()
  {
    return new bg(this);
  }

  public bg a(int paramInt)
  {
    this.b = paramInt;
    b(true);
    return this;
  }

  public bg a(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public bg a(ap paramap)
  {
    this.a = paramap;
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

  public bg b(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public void b()
  {
    this.a = null;
    b(false);
    this.b = 0;
    this.c = null;
    this.d = null;
  }

  public void b(bN parambN)
  {
    ((bU)k.get(parambN.s())).a().b(parambN, this);
  }

  public void b(boolean paramBoolean)
  {
    this.m = a.a(this.m, 0, paramBoolean);
  }

  public ap c()
  {
    return this.a;
  }

  public bg.e c(int paramInt)
  {
    return bg.e.a(paramInt);
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
    return this.b;
  }

  public void h()
  {
    this.m = a.b(this.m, 0);
  }

  public boolean i()
  {
    return a.a(this.m, 0);
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

  public String m()
  {
    return this.d;
  }

  public void n()
  {
    this.d = null;
  }

  public boolean o()
  {
    return this.d != null;
  }

  public void p()
  {
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("UserInfo(");
    int i2 = 1;
    if (e())
    {
      localStringBuilder.append("gender:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        i2 = 0;
      }
    }
    else
    {
      if (i())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("age:");
        localStringBuilder.append(this.b);
        i2 = 0;
      }
      if (!l())
        break label208;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("id:");
      if (this.c != null)
        break label182;
      localStringBuilder.append("null");
    }
    while (true)
    {
      label119: if (o())
      {
        if (i1 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("source:");
        if (this.d != null)
          break label196;
        localStringBuilder.append("null");
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label182: localStringBuilder.append(this.c);
        i1 = 0;
        break label119;
        label196: localStringBuilder.append(this.d);
      }
      label208: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bg
 * JD-Core Version:    0.6.0
 */