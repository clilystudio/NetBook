package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ak
  implements Serializable, Cloneable, bz<ak, ak.e>
{
  private static final bK A;
  private static final bK B;
  private static final bK C;
  private static final bK D;
  private static final bK E;
  private static final bK F;
  private static final bK G;
  private static final bK H;
  private static final bK I;
  private static final bK J;
  private static final Map<Class<? extends bT>, bU> K;
  public static final Map<ak.e, cl> r;
  private static final bR s = new bR("DeviceInfo");
  private static final bK t = new bK("device_id", 11, 1);
  private static final bK u = new bK("idmd5", 11, 2);
  private static final bK v = new bK("mac_address", 11, 3);
  private static final bK w = new bK("open_udid", 11, 4);
  private static final bK x = new bK("model", 11, 5);
  private static final bK y = new bK("cpu", 11, 6);
  private static final bK z = new bK("os", 11, 7);
  private byte O = 0;
  private ak.e[] P;
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public ba i;
  public boolean j;
  public boolean k;
  public String l;
  public String m;
  public long n;
  public String o;
  public String p;
  public String q;

  static
  {
    A = new bK("os_version", 11, 8);
    B = new bK("resolution", 12, 9);
    C = new bK("is_jailbroken", 2, 10);
    D = new bK("is_pirated", 2, 11);
    E = new bK("device_board", 11, 12);
    F = new bK("device_brand", 11, 13);
    G = new bK("device_manutime", 10, 14);
    H = new bK("device_manufacturer", 11, 15);
    I = new bK("device_manuid", 11, 16);
    J = new bK("device_name", 11, 17);
    HashMap localHashMap = new HashMap();
    K = localHashMap;
    localHashMap.put(bV.class, new o(0));
    K.put(bW.class, new q(0));
    EnumMap localEnumMap = new EnumMap(ak.e.class);
    localEnumMap.put(ak.e.a, new cl("device_id", 2, new cm(11)));
    localEnumMap.put(ak.e.b, new cl("idmd5", 2, new cm(11)));
    localEnumMap.put(ak.e.c, new cl("mac_address", 2, new cm(11)));
    localEnumMap.put(ak.e.d, new cl("open_udid", 2, new cm(11)));
    localEnumMap.put(ak.e.e, new cl("model", 2, new cm(11)));
    localEnumMap.put(ak.e.f, new cl("cpu", 2, new cm(11)));
    localEnumMap.put(ak.e.g, new cl("os", 2, new cm(11)));
    localEnumMap.put(ak.e.h, new cl("os_version", 2, new cm(11)));
    localEnumMap.put(ak.e.i, new cl("resolution", 2, new cq(12, ba.class)));
    localEnumMap.put(ak.e.j, new cl("is_jailbroken", 2, new cm(2)));
    localEnumMap.put(ak.e.k, new cl("is_pirated", 2, new cm(2)));
    localEnumMap.put(ak.e.l, new cl("device_board", 2, new cm(11)));
    localEnumMap.put(ak.e.m, new cl("device_brand", 2, new cm(11)));
    localEnumMap.put(ak.e.n, new cl("device_manutime", 2, new cm(10)));
    localEnumMap.put(ak.e.o, new cl("device_manufacturer", 2, new cm(11)));
    localEnumMap.put(ak.e.p, new cl("device_manuid", 2, new cm(11)));
    localEnumMap.put(ak.e.q, new cl("device_name", 2, new cm(11)));
    r = Collections.unmodifiableMap(localEnumMap);
    cl.a(ak.class, r);
  }

  public ak()
  {
    ak.e[] arrayOfe = new ak.e[17];
    arrayOfe[0] = ak.e.a;
    arrayOfe[1] = ak.e.b;
    arrayOfe[2] = ak.e.c;
    arrayOfe[3] = ak.e.d;
    arrayOfe[4] = ak.e.e;
    arrayOfe[5] = ak.e.f;
    arrayOfe[6] = ak.e.g;
    arrayOfe[7] = ak.e.h;
    arrayOfe[8] = ak.e.i;
    arrayOfe[9] = ak.e.j;
    arrayOfe[10] = ak.e.k;
    arrayOfe[11] = ak.e.l;
    arrayOfe[12] = ak.e.m;
    arrayOfe[13] = ak.e.n;
    arrayOfe[14] = ak.e.o;
    arrayOfe[15] = ak.e.p;
    arrayOfe[16] = ak.e.q;
    this.P = arrayOfe;
  }

  public ak(ak paramak)
  {
    ak.e[] arrayOfe = new ak.e[17];
    arrayOfe[0] = ak.e.a;
    arrayOfe[1] = ak.e.b;
    arrayOfe[2] = ak.e.c;
    arrayOfe[3] = ak.e.d;
    arrayOfe[4] = ak.e.e;
    arrayOfe[5] = ak.e.f;
    arrayOfe[6] = ak.e.g;
    arrayOfe[7] = ak.e.h;
    arrayOfe[8] = ak.e.i;
    arrayOfe[9] = ak.e.j;
    arrayOfe[10] = ak.e.k;
    arrayOfe[11] = ak.e.l;
    arrayOfe[12] = ak.e.m;
    arrayOfe[13] = ak.e.n;
    arrayOfe[14] = ak.e.o;
    arrayOfe[15] = ak.e.p;
    arrayOfe[16] = ak.e.q;
    this.P = arrayOfe;
    this.O = paramak.O;
    if (paramak.e())
      this.a = paramak.a;
    if (paramak.i())
      this.b = paramak.b;
    if (paramak.l())
      this.c = paramak.c;
    if (paramak.o())
      this.d = paramak.d;
    if (paramak.r())
      this.e = paramak.e;
    if (paramak.u())
      this.f = paramak.f;
    if (paramak.x())
      this.g = paramak.g;
    if (paramak.A())
      this.h = paramak.h;
    if (paramak.D())
      this.i = new ba(paramak.i);
    this.j = paramak.j;
    this.k = paramak.k;
    if (paramak.M())
      this.l = paramak.l;
    if (paramak.P())
      this.m = paramak.m;
    this.n = paramak.n;
    if (paramak.V())
      this.o = paramak.o;
    if (paramak.Y())
      this.p = paramak.p;
    if (paramak.ab())
      this.q = paramak.q;
  }

  public boolean A()
  {
    return this.h != null;
  }

  public ba B()
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

  public boolean E()
  {
    return this.j;
  }

  public void F()
  {
    this.O = a.b(this.O, 0);
  }

  public boolean G()
  {
    return a.a(this.O, 0);
  }

  public boolean H()
  {
    return this.k;
  }

  public void I()
  {
    this.O = a.b(this.O, 1);
  }

  public boolean J()
  {
    return a.a(this.O, 1);
  }

  public String K()
  {
    return this.l;
  }

  public void L()
  {
    this.l = null;
  }

  public boolean M()
  {
    return this.l != null;
  }

  public String N()
  {
    return this.m;
  }

  public void O()
  {
    this.m = null;
  }

  public boolean P()
  {
    return this.m != null;
  }

  public long Q()
  {
    return this.n;
  }

  public void R()
  {
    this.O = a.b(this.O, 2);
  }

  public boolean S()
  {
    return a.a(this.O, 2);
  }

  public String T()
  {
    return this.o;
  }

  public void U()
  {
    this.o = null;
  }

  public boolean V()
  {
    return this.o != null;
  }

  public String W()
  {
    return this.p;
  }

  public void X()
  {
    this.p = null;
  }

  public boolean Y()
  {
    return this.p != null;
  }

  public String Z()
  {
    return this.q;
  }

  public ak.e a(int paramInt)
  {
    return ak.e.a(paramInt);
  }

  public ak a()
  {
    return new ak(this);
  }

  public ak a(long paramLong)
  {
    this.n = paramLong;
    p(true);
    return this;
  }

  public ak a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public ak a(ba paramba)
  {
    this.i = paramba;
    return this;
  }

  public void a(bN parambN)
  {
    ((bU)K.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a = null;
  }

  public void aa()
  {
    this.q = null;
  }

  public boolean ab()
  {
    return this.q != null;
  }

  public void ac()
  {
    if (this.i != null)
      this.i.j();
  }

  public ak b(String paramString)
  {
    this.b = paramString;
    return this;
  }

  public void b()
  {
    this.a = null;
    this.b = null;
    this.c = null;
    this.d = null;
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
    this.i = null;
    k(false);
    this.j = false;
    m(false);
    this.k = false;
    this.l = null;
    this.m = null;
    p(false);
    this.n = 0L;
    this.o = null;
    this.p = null;
    this.q = null;
  }

  public void b(bN parambN)
  {
    ((bU)K.get(parambN.s())).a().b(parambN, this);
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

  public ak c(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.c = null;
  }

  public ak d(String paramString)
  {
    this.d = paramString;
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

  public ak e(String paramString)
  {
    this.e = paramString;
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

  public ak f(String paramString)
  {
    this.f = paramString;
    return this;
  }

  public void f(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.f = null;
  }

  public ak g(String paramString)
  {
    this.g = paramString;
    return this;
  }

  public void g(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.g = null;
  }

  public ak h(String paramString)
  {
    this.h = paramString;
    return this;
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

  public ak i(String paramString)
  {
    this.l = paramString;
    return this;
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

  public String j()
  {
    return this.c;
  }

  public ak j(String paramString)
  {
    this.m = paramString;
    return this;
  }

  public ak j(boolean paramBoolean)
  {
    this.j = paramBoolean;
    k(true);
    return this;
  }

  public ak k(String paramString)
  {
    this.o = paramString;
    return this;
  }

  public void k()
  {
    this.c = null;
  }

  public void k(boolean paramBoolean)
  {
    this.O = a.a(this.O, 0, paramBoolean);
  }

  public ak l(String paramString)
  {
    this.p = paramString;
    return this;
  }

  public ak l(boolean paramBoolean)
  {
    this.k = paramBoolean;
    m(true);
    return this;
  }

  public boolean l()
  {
    return this.c != null;
  }

  public String m()
  {
    return this.d;
  }

  public ak m(String paramString)
  {
    this.q = paramString;
    return this;
  }

  public void m(boolean paramBoolean)
  {
    this.O = a.a(this.O, 1, paramBoolean);
  }

  public void n()
  {
    this.d = null;
  }

  public void n(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.l = null;
  }

  public void o(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.m = null;
  }

  public boolean o()
  {
    return this.d != null;
  }

  public String p()
  {
    return this.e;
  }

  public void p(boolean paramBoolean)
  {
    this.O = a.a(this.O, 2, paramBoolean);
  }

  public void q()
  {
    this.e = null;
  }

  public void q(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.o = null;
  }

  public void r(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.p = null;
  }

  public boolean r()
  {
    return this.e != null;
  }

  public String s()
  {
    return this.f;
  }

  public void s(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.q = null;
  }

  public void t()
  {
    this.f = null;
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("DeviceInfo(");
    int i2 = 1;
    if (e())
    {
      localStringBuilder.append("device_id:");
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
        localStringBuilder.append("idmd5:");
        if (this.b != null)
          break label754;
        localStringBuilder.append("null");
        label89: i2 = 0;
      }
      if (l())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("mac_address:");
        if (this.c != null)
          break label766;
        localStringBuilder.append("null");
        label133: i2 = 0;
      }
      if (o())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("open_udid:");
        if (this.d != null)
          break label778;
        localStringBuilder.append("null");
        label177: i2 = 0;
      }
      if (r())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("model:");
        if (this.e != null)
          break label790;
        localStringBuilder.append("null");
        label221: i2 = 0;
      }
      if (u())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("cpu:");
        if (this.f != null)
          break label802;
        localStringBuilder.append("null");
        label265: i2 = 0;
      }
      if (x())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("os:");
        if (this.g != null)
          break label814;
        localStringBuilder.append("null");
        label309: i2 = 0;
      }
      if (A())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("os_version:");
        if (this.h != null)
          break label826;
        localStringBuilder.append("null");
        label353: i2 = 0;
      }
      if (D())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("resolution:");
        if (this.i != null)
          break label838;
        localStringBuilder.append("null");
        label397: i2 = 0;
      }
      if (G())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("is_jailbroken:");
        localStringBuilder.append(this.j);
        i2 = 0;
      }
      if (J())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("is_pirated:");
        localStringBuilder.append(this.k);
        i2 = 0;
      }
      if (M())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("device_board:");
        if (this.l != null)
          break label850;
        localStringBuilder.append("null");
        label517: i2 = 0;
      }
      if (P())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("device_brand:");
        if (this.m != null)
          break label862;
        localStringBuilder.append("null");
        label561: i2 = 0;
      }
      if (S())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("device_manutime:");
        localStringBuilder.append(this.n);
        i2 = 0;
      }
      if (V())
      {
        if (i2 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("device_manufacturer:");
        if (this.o != null)
          break label874;
        localStringBuilder.append("null");
        label643: i2 = 0;
      }
      if (!Y())
        break label912;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("device_manuid:");
      if (this.p != null)
        break label886;
      localStringBuilder.append("null");
    }
    while (true)
    {
      label687: if (ab())
      {
        if (i1 == 0)
          localStringBuilder.append(", ");
        localStringBuilder.append("device_name:");
        if (this.q != null)
          break label900;
        localStringBuilder.append("null");
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label754: localStringBuilder.append(this.b);
        break label89;
        label766: localStringBuilder.append(this.c);
        break label133;
        label778: localStringBuilder.append(this.d);
        break label177;
        label790: localStringBuilder.append(this.e);
        break label221;
        label802: localStringBuilder.append(this.f);
        break label265;
        label814: localStringBuilder.append(this.g);
        break label309;
        label826: localStringBuilder.append(this.h);
        break label353;
        label838: localStringBuilder.append(this.i);
        break label397;
        label850: localStringBuilder.append(this.l);
        break label517;
        label862: localStringBuilder.append(this.m);
        break label561;
        label874: localStringBuilder.append(this.o);
        break label643;
        label886: localStringBuilder.append(this.p);
        i1 = 0;
        break label687;
        label900: localStringBuilder.append(this.q);
      }
      label912: i1 = i2;
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
 * Qualified Name:     u.aly.ak
 * JD-Core Version:    0.6.0
 */