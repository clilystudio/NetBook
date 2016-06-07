package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class e
  implements Serializable, Cloneable, org.apache.thrift.b<e, e.a>
{
  public static final Map<e.a, org.apache.thrift.meta_data.b> k;
  private static final k l = new k("XmPushActionAckMessage");
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("messageTs", 10, 5);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("topic", 11, 6);
  private static final org.apache.thrift.protocol.c s = new org.apache.thrift.protocol.c("aliasName", 11, 7);
  private static final org.apache.thrift.protocol.c t = new org.apache.thrift.protocol.c("request", 12, 8);
  private static final org.apache.thrift.protocol.c u = new org.apache.thrift.protocol.c("packageName", 11, 9);
  private static final org.apache.thrift.protocol.c v = new org.apache.thrift.protocol.c("category", 11, 10);
  public String a;
  public d b;
  public String c;
  public String d;
  public long e;
  public String f;
  public String g;
  public n h;
  public String i;
  public String j;
  private BitSet w = new BitSet(1);

  static
  {
    EnumMap localEnumMap = new EnumMap(e.a.class);
    localEnumMap.put(e.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(e.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(e.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(e.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(e.a.e, new org.apache.thrift.meta_data.b("messageTs", 1, new org.apache.thrift.meta_data.c(10)));
    localEnumMap.put(e.a.f, new org.apache.thrift.meta_data.b("topic", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(e.a.g, new org.apache.thrift.meta_data.b("aliasName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(e.a.h, new org.apache.thrift.meta_data.b("request", 2, new org.apache.thrift.meta_data.g(12, n.class)));
    localEnumMap.put(e.a.i, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(e.a.j, new org.apache.thrift.meta_data.b("category", 2, new org.apache.thrift.meta_data.c(11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(e.class, k);
  }

  public e a(long paramLong)
  {
    this.e = paramLong;
    a(true);
    return this;
  }

  public e a(String paramString)
  {
    this.c = paramString;
    return this;
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
        if (localc.a == 11)
        {
          this.a = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 2:
        if (localc.a == 12)
        {
          this.b = new d();
          this.b.a(paramf);
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
        if (localc.a == 11)
        {
          this.f = paramf.p();
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
        if (localc.a == 12)
        {
          this.h = new n();
          this.h.a(paramf);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 9:
        if (localc.a == 11)
        {
          this.i = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 10:
        if (localc.a == 11)
        {
          this.j = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    if (!e())
      throw new org.apache.thrift.protocol.g("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
    k();
  }

  public void a(boolean paramBoolean)
  {
    this.w.set(0, paramBoolean);
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(e parame)
  {
    if (parame == null);
    boolean bool17;
    boolean bool18;
    do
    {
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
                      bool2 = parame.a();
                    }
                    while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(parame.a))));
                    bool3 = b();
                    bool4 = parame.b();
                  }
                  while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(parame.b))));
                  bool5 = c();
                  bool6 = parame.c();
                }
                while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(parame.c))));
                bool7 = d();
                bool8 = parame.d();
              }
              while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(parame.d)) || (this.e != parame.e)));
              bool9 = f();
              bool10 = parame.f();
            }
            while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.f.equals(parame.f))));
            bool11 = g();
            bool12 = parame.g();
          }
          while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.g.equals(parame.g))));
          bool13 = h();
          bool14 = parame.h();
        }
        while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.h.a(parame.h))));
        bool15 = i();
        bool16 = parame.i();
      }
      while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.i.equals(parame.i))));
      bool17 = j();
      bool18 = parame.j();
    }
    while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (!this.j.equals(parame.j))));
    return true;
  }

  public int b(e parame)
  {
    int i1;
    if (!getClass().equals(parame.getClass()))
      i1 = getClass().getName().compareTo(parame.getClass().getName());
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
                                    do
                                    {
                                      do
                                      {
                                        do
                                        {
                                          do
                                          {
                                            return i1;
                                            i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(parame.a()));
                                          }
                                          while (i1 != 0);
                                          if (!a())
                                            break;
                                          i1 = org.apache.thrift.c.a(this.a, parame.a);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(parame.b()));
                                      }
                                      while (i1 != 0);
                                      if (!b())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.b, parame.b);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(parame.c()));
                                  }
                                  while (i1 != 0);
                                  if (!c())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.c, parame.c);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(parame.d()));
                              }
                              while (i1 != 0);
                              if (!d())
                                break;
                              i1 = org.apache.thrift.c.a(this.d, parame.d);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(parame.e()));
                          }
                          while (i1 != 0);
                          if (!e())
                            break;
                          i1 = org.apache.thrift.c.a(this.e, parame.e);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(parame.f()));
                      }
                      while (i1 != 0);
                      if (!f())
                        break;
                      i1 = org.apache.thrift.c.a(this.f, parame.f);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(parame.g()));
                  }
                  while (i1 != 0);
                  if (!g())
                    break;
                  i1 = org.apache.thrift.c.a(this.g, parame.g);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(parame.h()));
              }
              while (i1 != 0);
              if (!h())
                break;
              i1 = org.apache.thrift.c.a(this.h, parame.h);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(parame.i()));
          }
          while (i1 != 0);
          if (!i())
            break;
          i1 = org.apache.thrift.c.a(this.i, parame.i);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(parame.j()));
      }
      while (i1 != 0);
      if (!j())
        break;
      i1 = org.apache.thrift.c.a(this.j, parame.j);
    }
    while (i1 != 0);
    return 0;
  }

  public e b(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public void b(f paramf)
  {
    k();
    paramf.a();
    if ((this.a != null) && (a()))
    {
      paramf.a(m);
      paramf.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramf.a(n);
      this.b.b(paramf);
    }
    if (this.c != null)
    {
      paramf.a(o);
      paramf.a(this.c);
    }
    if (this.d != null)
    {
      paramf.a(p);
      paramf.a(this.d);
    }
    paramf.a(q);
    paramf.a(this.e);
    if ((this.f != null) && (f()))
    {
      paramf.a(r);
      paramf.a(this.f);
    }
    if ((this.g != null) && (g()))
    {
      paramf.a(s);
      paramf.a(this.g);
    }
    if ((this.h != null) && (h()))
    {
      paramf.a(t);
      this.h.b(paramf);
    }
    if ((this.i != null) && (i()))
    {
      paramf.a(u);
      paramf.a(this.i);
    }
    if ((this.j != null) && (j()))
    {
      paramf.a(v);
      paramf.a(this.j);
    }
    paramf.c();
    paramf.b();
  }

  public boolean b()
  {
    return this.b != null;
  }

  public e c(String paramString)
  {
    this.f = paramString;
    return this;
  }

  public boolean c()
  {
    return this.c != null;
  }

  public e d(String paramString)
  {
    this.g = paramString;
    return this;
  }

  public boolean d()
  {
    return this.d != null;
  }

  public boolean e()
  {
    return this.w.get(0);
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof e));
    return a((e)paramObject);
  }

  public boolean f()
  {
    return this.f != null;
  }

  public boolean g()
  {
    return this.g != null;
  }

  public boolean h()
  {
    return this.h != null;
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean i()
  {
    return this.i != null;
  }

  public boolean j()
  {
    return this.j != null;
  }

  public void k()
  {
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'appId' was not present! Struct: " + toString());
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionAckMessage(");
    int i2 = 1;
    if (a())
    {
      localStringBuilder.append("debug:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        i2 = 0;
      }
    }
    else
    {
      if (!b())
        break label493;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label395;
      localStringBuilder.append("null");
    }
    while (true)
    {
      label89: if (i1 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("id:");
      if (this.c == null)
      {
        localStringBuilder.append("null");
        label124: localStringBuilder.append(", ");
        localStringBuilder.append("appId:");
        if (this.d != null)
          break label421;
        localStringBuilder.append("null");
        label155: localStringBuilder.append(", ");
        localStringBuilder.append("messageTs:");
        localStringBuilder.append(this.e);
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("topic:");
          if (this.f != null)
            break label433;
          localStringBuilder.append("null");
        }
        label218: if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("aliasName:");
          if (this.g != null)
            break label445;
          localStringBuilder.append("null");
        }
        label256: if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("request:");
          if (this.h != null)
            break label457;
          localStringBuilder.append("null");
        }
        label294: if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.i != null)
            break label469;
          localStringBuilder.append("null");
        }
        label332: if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.j != null)
            break label481;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label395: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label421: localStringBuilder.append(this.d);
        break label155;
        label433: localStringBuilder.append(this.f);
        break label218;
        label445: localStringBuilder.append(this.g);
        break label256;
        label457: localStringBuilder.append(this.h);
        break label294;
        label469: localStringBuilder.append(this.i);
        break label332;
        label481: localStringBuilder.append(this.j);
      }
      label493: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.e
 * JD-Core Version:    0.6.0
 */