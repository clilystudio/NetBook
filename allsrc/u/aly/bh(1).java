package u.aly;

import com.arcsoft.hpay100.a.a;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bh
  implements Serializable, Cloneable, bz<bh, bh.e>
{
  public static final Map<bh.e, cl> j;
  private static final bR k = new bR("UMEnvelope");
  private static final bK l = new bK("version", 11, 1);
  private static final bK m = new bK("address", 11, 2);
  private static final bK n = new bK("signature", 11, 3);
  private static final bK o = new bK("serial_num", 8, 4);
  private static final bK p = new bK("ts_secs", 8, 5);
  private static final bK q = new bK("length", 8, 6);
  private static final bK r = new bK("entity", 11, 7);
  private static final bK s = new bK("guid", 11, 8);
  private static final bK t = new bK("checksum", 11, 9);
  private static final Map<Class<? extends bT>, bU> u;
  public String a;
  public String b;
  public String c;
  public int d;
  public int e;
  public int f;
  public ByteBuffer g;
  public String h;
  public String i;
  private byte y = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    u = localHashMap;
    localHashMap.put(bV.class, new bp(0));
    u.put(bW.class, new br(0));
    EnumMap localEnumMap = new EnumMap(bh.e.class);
    localEnumMap.put(bh.e.a, new cl("version", 1, new cm(11)));
    localEnumMap.put(bh.e.b, new cl("address", 1, new cm(11)));
    localEnumMap.put(bh.e.c, new cl("signature", 1, new cm(11)));
    localEnumMap.put(bh.e.d, new cl("serial_num", 1, new cm(8)));
    localEnumMap.put(bh.e.e, new cl("ts_secs", 1, new cm(8)));
    localEnumMap.put(bh.e.f, new cl("length", 1, new cm(8)));
    localEnumMap.put(bh.e.g, new cl("entity", 1, new cm(11, true)));
    localEnumMap.put(bh.e.h, new cl("guid", 1, new cm(11)));
    localEnumMap.put(bh.e.i, new cl("checksum", 1, new cm(11)));
    j = Collections.unmodifiableMap(localEnumMap);
    cl.a(bh.class, j);
  }

  public bh()
  {
  }

  public bh(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3, ByteBuffer paramByteBuffer, String paramString4, String paramString5)
  {
    this();
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramInt1;
    d(true);
    this.e = paramInt2;
    e(true);
    this.f = paramInt3;
    f(true);
    this.g = paramByteBuffer;
    this.h = paramString4;
    this.i = paramString5;
  }

  public bh(bh parambh)
  {
    this.y = parambh.y;
    if (parambh.e())
      this.a = parambh.a;
    if (parambh.i())
      this.b = parambh.b;
    if (parambh.l())
      this.c = parambh.c;
    this.d = parambh.d;
    this.e = parambh.e;
    this.f = parambh.f;
    if (parambh.y())
      this.g = bB.b(parambh.g);
    if (parambh.B())
      this.h = parambh.h;
    if (parambh.E())
      this.i = parambh.i;
  }

  public void A()
  {
    this.h = null;
  }

  public boolean B()
  {
    return this.h != null;
  }

  public String C()
  {
    return this.i;
  }

  public void D()
  {
    this.i = null;
  }

  public boolean E()
  {
    return this.i != null;
  }

  public void F()
  {
    if (this.a == null)
      throw new cz("Required field 'version' was not present! Struct: " + toString());
    if (this.b == null)
      throw new cz("Required field 'address' was not present! Struct: " + toString());
    if (this.c == null)
      throw new cz("Required field 'signature' was not present! Struct: " + toString());
    if (this.g == null)
      throw new cz("Required field 'entity' was not present! Struct: " + toString());
    if (this.h == null)
      throw new cz("Required field 'guid' was not present! Struct: " + toString());
    if (this.i == null)
      throw new cz("Required field 'checksum' was not present! Struct: " + toString());
  }

  public bh a()
  {
    return new bh(this);
  }

  public bh a(int paramInt)
  {
    this.d = paramInt;
    d(true);
    return this;
  }

  public bh a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public bh a(ByteBuffer paramByteBuffer)
  {
    this.g = paramByteBuffer;
    return this;
  }

  public bh a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    for (ByteBuffer localByteBuffer = null; ; localByteBuffer = ByteBuffer.wrap(paramArrayOfByte))
    {
      a(localByteBuffer);
      return this;
    }
  }

  public void a(bN parambN)
  {
    ((bU)u.get(parambN.s())).a().a(parambN, this);
  }

  public void a(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a = null;
  }

  public bh b(String paramString)
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
    this.d = 0;
    e(false);
    this.e = 0;
    f(false);
    this.f = 0;
    this.g = null;
    this.h = null;
    this.i = null;
  }

  public void b(bN parambN)
  {
    ((bU)u.get(parambN.s())).a().b(parambN, this);
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

  public bh c(int paramInt)
  {
    this.e = paramInt;
    e(true);
    return this;
  }

  public bh c(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public void c(boolean paramBoolean)
  {
    if (!paramBoolean)
      this.c = null;
  }

  public bh d(int paramInt)
  {
    this.f = paramInt;
    f(true);
    return this;
  }

  public bh d(String paramString)
  {
    this.h = paramString;
    return this;
  }

  public void d()
  {
    this.a = null;
  }

  public void d(boolean paramBoolean)
  {
    this.y = a.a(this.y, 0, paramBoolean);
  }

  public bh.e e(int paramInt)
  {
    return bh.e.a(paramInt);
  }

  public bh e(String paramString)
  {
    this.i = paramString;
    return this;
  }

  public void e(boolean paramBoolean)
  {
    this.y = a.a(this.y, 1, paramBoolean);
  }

  public boolean e()
  {
    return this.a != null;
  }

  public String f()
  {
    return this.b;
  }

  public void f(boolean paramBoolean)
  {
    this.y = a.a(this.y, 2, paramBoolean);
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

  public int m()
  {
    return this.d;
  }

  public void n()
  {
    this.y = a.b(this.y, 0);
  }

  public boolean o()
  {
    return a.a(this.y, 0);
  }

  public int p()
  {
    return this.e;
  }

  public void q()
  {
    this.y = a.b(this.y, 1);
  }

  public boolean r()
  {
    return a.a(this.y, 1);
  }

  public int s()
  {
    return this.f;
  }

  public void t()
  {
    this.y = a.b(this.y, 2);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("UMEnvelope(");
    localStringBuilder.append("version:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("address:");
      if (this.b != null)
        break label289;
      localStringBuilder.append("null");
      label65: localStringBuilder.append(", ");
      localStringBuilder.append("signature:");
      if (this.c != null)
        break label301;
      localStringBuilder.append("null");
      label96: localStringBuilder.append(", ");
      localStringBuilder.append("serial_num:");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", ");
      localStringBuilder.append("ts_secs:");
      localStringBuilder.append(this.e);
      localStringBuilder.append(", ");
      localStringBuilder.append("length:");
      localStringBuilder.append(this.f);
      localStringBuilder.append(", ");
      localStringBuilder.append("entity:");
      if (this.g != null)
        break label313;
      localStringBuilder.append("null");
      label202: localStringBuilder.append(", ");
      localStringBuilder.append("guid:");
      if (this.h != null)
        break label324;
      localStringBuilder.append("null");
      label233: localStringBuilder.append(", ");
      localStringBuilder.append("checksum:");
      if (this.i != null)
        break label336;
      localStringBuilder.append("null");
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label289: localStringBuilder.append(this.b);
      break label65;
      label301: localStringBuilder.append(this.c);
      break label96;
      label313: bB.a(this.g, localStringBuilder);
      break label202;
      label324: localStringBuilder.append(this.h);
      break label233;
      label336: localStringBuilder.append(this.i);
    }
  }

  public boolean u()
  {
    return a.a(this.y, 2);
  }

  public byte[] v()
  {
    a(bB.a(this.g));
    if (this.g == null)
      return null;
    return this.g.array();
  }

  public ByteBuffer w()
  {
    return this.g;
  }

  public void x()
  {
    this.g = null;
  }

  public boolean y()
  {
    return this.g != null;
  }

  public String z()
  {
    return this.h;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bh
 * JD-Core Version:    0.6.0
 */