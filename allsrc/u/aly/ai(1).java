package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ai
  implements Serializable, Cloneable, bz<ai, ai.e>
{
  public static final Map<ai.e, cl> k;
  private static final bR l = new bR("AppInfo");
  private static final bK m = new bK("key", 11, 1);
  private static final bK n = new bK("version", 11, 2);
  private static final bK o = new bK("version_index", 8, 3);
  private static final bK p = new bK("package_name", 11, 4);
  private static final bK q = new bK("sdk_type", 8, 5);
  private static final bK r = new bK("sdk_version", 11, 6);
  private static final bK s = new bK("channel", 11, 7);
  private static final bK t = new bK("wrapper_type", 11, 8);
  private static final bK u = new bK("wrapper_version", 11, 9);
  private static final bK v = new bK("vertical_type", 8, 10);
  private static final Map<Class<? extends bT>, bU> w;
  private ai.e[] A;
  public String a;
  public String b;
  public int c;
  public String d;
  public bc e;
  public String f;
  public String g;
  public String h;
  public String i;
  public int j;
  private byte z = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    w = localHashMap;
    localHashMap.put(bV.class, new g(0));
    w.put(bW.class, new i(0));
    EnumMap localEnumMap = new EnumMap(ai.e.class);
    localEnumMap.put(ai.e.a, new cl("key", 1, new cm(11)));
    localEnumMap.put(ai.e.b, new cl("version", 2, new cm(11)));
    localEnumMap.put(ai.e.c, new cl("version_index", 2, new cm(8)));
    localEnumMap.put(ai.e.d, new cl("package_name", 2, new cm(11)));
    localEnumMap.put(ai.e.e, new cl("sdk_type", 1, new ck(16, bc.class)));
    localEnumMap.put(ai.e.f, new cl("sdk_version", 1, new cm(11)));
    localEnumMap.put(ai.e.g, new cl("channel", 1, new cm(11)));
    localEnumMap.put(ai.e.h, new cl("wrapper_type", 2, new cm(11)));
    localEnumMap.put(ai.e.i, new cl("wrapper_version", 2, new cm(11)));
    localEnumMap.put(ai.e.j, new cl("vertical_type", 2, new cm(8)));
    k = Collections.unmodifiableMap(localEnumMap);
    cl.a(ai.class, k);
  }

  public ai()
  {
    ai.e[] arrayOfe = new ai.e[6];
    arrayOfe[0] = ai.e.b;
    arrayOfe[1] = ai.e.c;
    arrayOfe[2] = ai.e.d;
    arrayOfe[3] = ai.e.h;
    arrayOfe[4] = ai.e.i;
    arrayOfe[5] = ai.e.j;
    this.A = arrayOfe;
  }

  public ai(String paramString1, bc parambc, String paramString2, String paramString3)
  {
    this();
    this.a = paramString1;
    this.e = parambc;
    this.f = paramString2;
    this.g = paramString3;
  }

  public ai(ai paramai)
  {
    ai.e[] arrayOfe = new ai.e[6];
    arrayOfe[0] = ai.e.b;
    arrayOfe[1] = ai.e.c;
    arrayOfe[2] = ai.e.d;
    arrayOfe[3] = ai.e.h;
    arrayOfe[4] = ai.e.i;
    arrayOfe[5] = ai.e.j;
    this.A = arrayOfe;
    this.z = paramai.z;
    if (paramai.e())
      this.a = paramai.a;
    if (paramai.i())
      this.b = paramai.b;
    this.c = paramai.c;
    if (paramai.o())
      this.d = paramai.d;
    if (paramai.r())
      this.e = paramai.e;
    if (paramai.u())
      this.f = paramai.f;
    if (paramai.x())
      this.g = paramai.g;
    if (paramai.A())
      this.h = paramai.h;
    if (paramai.D())
      this.i = paramai.i;
    this.j = paramai.j;
  }

  public boolean A()
  {
    return this.h != null;
  }

  public String B()
  {
    return this.i;
  }

  public void C()
  {
    this.i = null;
  }

  public boolean D()
  {
    return this.i != null;
  }

  public int E()
  {
    return this.j;
  }

  public void F()
  {
    this.z = a.b(this.z, 1);
  }

  public boolean G()
  {
    return a.a(this.z, 1);
  }

  public void H()
  {
    if (this.a == null)
      throw new cz("Required field 'key' was not present! Struct: " + toString());
    if (this.e == null)
      throw new cz("Required field 'sdk_type' was not present! Struct: " + toString());
    if (this.f == null)
      throw new cz("Required field 'sdk_version' was not present! Struct: " + toString());
    if (this.g == null)
      throw new cz("Required field 'channel' was not present! Struct: " + toString());
  }

  public ai a()
  {
    return new ai(this);
  }

  public ai a(int paramInt)
  {
    this.c = paramInt;
    c(true);
    return this;
  }

  public ai a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public ai a(bc parambc)
  {
    this.e = parambc;
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)w.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a = null;
  }

  public ai b(String paramString)
  {
    this.b = paramString;
    return this;
  }

  public void b()
  {
    this.a = null;
    this.b = null;
    c(false);
    this.c = 0;
    this.d = null;
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
    this.i = null;
    j(false);
    this.j = 0;
  }

  public void b(bN parambN)
  {
    ((bU)w.get(parambN.s())).a().b(parambN, this);
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

  public ai c(int paramInt)
  {
    this.j = paramInt;
    j(true);
    return this;
  }

  public ai c(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public void c(boolean paramBoolean)
  {
    this.z = a.a(this.z, 0, paramBoolean);
  }

  public ai.e d(int paramInt)
  {
    return ai.e.a(paramInt);
  }

  public ai d(String paramString)
  {
    this.f = paramString;
    return this;
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

  public ai e(String paramString)
  {
    this.g = paramString;
    return this;
  }

  public void e(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.e = null;
  }

  public boolean e()
  {
    return this.a != null;
  }

  public String f()
  {
    return this.b;
  }

  public ai f(String paramString)
  {
    this.h = paramString;
    return this;
  }

  public void f(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.f = null;
  }

  public ai g(String paramString)
  {
    this.i = paramString;
    return this;
  }

  public void g(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.g = null;
  }

  public void h()
  {
    this.b = null;
  }

  public void h(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.h = null;
  }

  public void i(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.i = null;
  }

  public boolean i()
  {
    return this.b != null;
  }

  public int j()
  {
    return this.c;
  }

  public void j(boolean paramBoolean)
  {
    this.z = a.a(this.z, 1, paramBoolean);
  }

  public void k()
  {
    this.z = a.b(this.z, 0);
  }

  public boolean l()
  {
    return a.a(this.z, 0);
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

  public bc p()
  {
    return this.e;
  }

  public void q()
  {
    this.e = null;
  }

  public boolean r()
  {
    return this.e != null;
  }

  public String s()
  {
    return this.f;
  }

  public void t()
  {
    this.f = null;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("AppInfo(");
    localStringBuilder.append("key:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("version:");
        if (this.b != null)
          break label368;
        localStringBuilder.append("null");
      }
      label72: if (l())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("version_index:");
        localStringBuilder.append(this.c);
      }
      if (o())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("package_name:");
        if (this.d != null)
          break label380;
        localStringBuilder.append("null");
      }
      label142: localStringBuilder.append(", ");
      localStringBuilder.append("sdk_type:");
      if (this.e != null)
        break label392;
      localStringBuilder.append("null");
      label173: localStringBuilder.append(", ");
      localStringBuilder.append("sdk_version:");
      if (this.f != null)
        break label404;
      localStringBuilder.append("null");
      label204: localStringBuilder.append(", ");
      localStringBuilder.append("channel:");
      if (this.g != null)
        break label416;
      localStringBuilder.append("null");
      label235: if (A())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("wrapper_type:");
        if (this.h != null)
          break label428;
        localStringBuilder.append("null");
      }
      label273: if (D())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("wrapper_version:");
        if (this.i != null)
          break label440;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      if (G())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("vertical_type:");
        localStringBuilder.append(this.j);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label368: localStringBuilder.append(this.b);
      break label72;
      label380: localStringBuilder.append(this.d);
      break label142;
      label392: localStringBuilder.append(this.e);
      break label173;
      label404: localStringBuilder.append(this.f);
      break label204;
      label416: localStringBuilder.append(this.g);
      break label235;
      label428: localStringBuilder.append(this.h);
      break label273;
      label440: localStringBuilder.append(this.i);
    }
  }

  public boolean u()
  {
    return this.f != null;
  }

  public String v()
  {
    return this.g;
  }

  public void w()
  {
    this.g = null;
  }

  public boolean x()
  {
    return this.g != null;
  }

  public String y()
  {
    return this.h;
  }

  public void z()
  {
    this.h = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.ai
 * JD-Core Version:    0.6.0
 */