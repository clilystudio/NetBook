package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class b
  implements Serializable, Cloneable, org.apache.thrift.b<b, b.a>
{
  public static final Map<b.a, org.apache.thrift.meta_data.b> i;
  private static final k j = new k("PushMessage");
  private static final org.apache.thrift.protocol.c k = new org.apache.thrift.protocol.c("to", 12, 1);
  private static final org.apache.thrift.protocol.c l = new org.apache.thrift.protocol.c("id", 11, 2);
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("appId", 11, 3);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("payload", 11, 4);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("createAt", 10, 5);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("ttl", 10, 6);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("collapseKey", 11, 7);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("packageName", 11, 8);
  public d a;
  public String b;
  public String c;
  public String d;
  public long e;
  public long f;
  public String g;
  public String h;
  private BitSet s = new BitSet(2);

  static
  {
    EnumMap localEnumMap = new EnumMap(b.a.class);
    localEnumMap.put(b.a.a, new org.apache.thrift.meta_data.b("to", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(b.a.b, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.c, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.d, new org.apache.thrift.meta_data.b("payload", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.e, new org.apache.thrift.meta_data.b("createAt", 2, new org.apache.thrift.meta_data.c(10)));
    localEnumMap.put(b.a.f, new org.apache.thrift.meta_data.b("ttl", 2, new org.apache.thrift.meta_data.c(10)));
    localEnumMap.put(b.a.g, new org.apache.thrift.meta_data.b("collapseKey", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.h, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    i = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(b.class, i);
  }

  public void a(f paramf)
  {
    paramf.d();
    while (true)
    {
      org.apache.thrift.protocol.c localc = paramf.f();
      if (localc.a == 0)
        break;
      switch (localc.b)
      {
      default:
        i.a(paramf, localc.a);
        break;
      case 1:
        if (localc.a == 12)
        {
          this.a = new d();
          this.a.a(paramf);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 2:
        if (localc.a == 11)
        {
          this.b = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 3:
        if (localc.a == 11)
        {
          this.c = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 4:
        if (localc.a == 11)
        {
          this.d = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 5:
        if (localc.a == 10)
        {
          this.e = paramf.n();
          a(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 6:
        if (localc.a == 10)
        {
          this.f = paramf.n();
          b(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 7:
        if (localc.a == 11)
        {
          this.g = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 8:
        if (localc.a == 11)
        {
          this.h = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    l();
  }

  public void a(boolean paramBoolean)
  {
    this.s.set(0, paramBoolean);
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(b paramb)
  {
    if (paramb == null);
    boolean bool15;
    boolean bool16;
    do
    {
      boolean bool13;
      boolean bool14;
      do
      {
        boolean bool11;
        boolean bool12;
        do
        {
          boolean bool9;
          boolean bool10;
          do
          {
            boolean bool7;
            boolean bool8;
            do
            {
              boolean bool5;
              boolean bool6;
              do
              {
                boolean bool3;
                boolean bool4;
                do
                {
                  boolean bool1;
                  boolean bool2;
                  do
                  {
                    return false;
                    bool1 = a();
                    bool2 = paramb.a();
                  }
                  while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.a(paramb.a))));
                  bool3 = c();
                  bool4 = paramb.c();
                }
                while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.equals(paramb.b))));
                bool5 = d();
                bool6 = paramb.d();
              }
              while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramb.c))));
              bool7 = f();
              bool8 = paramb.f();
            }
            while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramb.d))));
            bool9 = h();
            bool10 = paramb.h();
          }
          while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (this.e != paramb.e)));
          bool11 = i();
          bool12 = paramb.i();
        }
        while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (this.f != paramb.f)));
        bool13 = j();
        bool14 = paramb.j();
      }
      while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.g.equals(paramb.g))));
      bool15 = k();
      bool16 = paramb.k();
    }
    while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.h.equals(paramb.h))));
    return true;
  }

  public int b(b paramb)
  {
    int i1;
    if (!getClass().equals(paramb.getClass()))
      i1 = getClass().getName().compareTo(paramb.getClass().getName());
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    return i1;
                                    i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramb.a()));
                                  }
                                  while (i1 != 0);
                                  if (!a())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.a, paramb.a);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramb.c()));
                              }
                              while (i1 != 0);
                              if (!c())
                                break;
                              i1 = org.apache.thrift.c.a(this.b, paramb.b);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramb.d()));
                          }
                          while (i1 != 0);
                          if (!d())
                            break;
                          i1 = org.apache.thrift.c.a(this.c, paramb.c);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramb.f()));
                      }
                      while (i1 != 0);
                      if (!f())
                        break;
                      i1 = org.apache.thrift.c.a(this.d, paramb.d);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(paramb.h()));
                  }
                  while (i1 != 0);
                  if (!h())
                    break;
                  i1 = org.apache.thrift.c.a(this.e, paramb.e);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(paramb.i()));
              }
              while (i1 != 0);
              if (!i())
                break;
              i1 = org.apache.thrift.c.a(this.f, paramb.f);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(paramb.j()));
          }
          while (i1 != 0);
          if (!j())
            break;
          i1 = org.apache.thrift.c.a(this.g, paramb.g);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(paramb.k()));
      }
      while (i1 != 0);
      if (!k())
        break;
      i1 = org.apache.thrift.c.a(this.h, paramb.h);
    }
    while (i1 != 0);
    return 0;
  }

  public String b()
  {
    return this.b;
  }

  public void b(f paramf)
  {
    l();
    paramf.a();
    if ((this.a != null) && (a()))
    {
      paramf.a(k);
      this.a.b(paramf);
    }
    if (this.b != null)
    {
      paramf.a(l);
      paramf.a(this.b);
    }
    if (this.c != null)
    {
      paramf.a(m);
      paramf.a(this.c);
    }
    if (this.d != null)
    {
      paramf.a(n);
      paramf.a(this.d);
    }
    if (h())
    {
      paramf.a(o);
      paramf.a(this.e);
    }
    if (i())
    {
      paramf.a(p);
      paramf.a(this.f);
    }
    if ((this.g != null) && (j()))
    {
      paramf.a(q);
      paramf.a(this.g);
    }
    if ((this.h != null) && (k()))
    {
      paramf.a(r);
      paramf.a(this.h);
    }
    paramf.c();
    paramf.b();
  }

  public void b(boolean paramBoolean)
  {
    this.s.set(1, paramBoolean);
  }

  public boolean c()
  {
    return this.b != null;
  }

  public boolean d()
  {
    return this.c != null;
  }

  public String e()
  {
    return this.d;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof b));
    return a((b)paramObject);
  }

  public boolean f()
  {
    return this.d != null;
  }

  public long g()
  {
    return this.e;
  }

  public boolean h()
  {
    return this.s.get(0);
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean i()
  {
    return this.s.get(1);
  }

  public boolean j()
  {
    return this.g != null;
  }

  public boolean k()
  {
    return this.h != null;
  }

  public void l()
  {
    if (this.b == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'appId' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'payload' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PushMessage(");
    int i1 = 1;
    if (a())
    {
      localStringBuilder.append("to:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        i1 = 0;
      }
    }
    else
    {
      if (i1 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("id:");
      if (this.b != null)
        break label307;
      localStringBuilder.append("null");
      label80: localStringBuilder.append(", ");
      localStringBuilder.append("appId:");
      if (this.c != null)
        break label319;
      localStringBuilder.append("null");
      label111: localStringBuilder.append(", ");
      localStringBuilder.append("payload:");
      if (this.d != null)
        break label331;
      localStringBuilder.append("null");
      label142: if (h())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("createAt:");
        localStringBuilder.append(this.e);
      }
      if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("ttl:");
        localStringBuilder.append(this.f);
      }
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("collapseKey:");
        if (this.g != null)
          break label343;
        localStringBuilder.append("null");
      }
      label244: if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("packageName:");
        if (this.h != null)
          break label355;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label307: localStringBuilder.append(this.b);
      break label80;
      label319: localStringBuilder.append(this.c);
      break label111;
      label331: localStringBuilder.append(this.d);
      break label142;
      label343: localStringBuilder.append(this.g);
      break label244;
      label355: localStringBuilder.append(this.h);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.b
 * JD-Core Version:    0.6.0
 */