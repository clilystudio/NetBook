package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class q
  implements Serializable, Cloneable, org.apache.thrift.b<q, q.a>
{
  public static final Map<q.a, org.apache.thrift.meta_data.b> k;
  private static final k l = new k("XmPushActionUnRegistration");
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("regId", 11, 5);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("appVersion", 11, 6);
  private static final org.apache.thrift.protocol.c s = new org.apache.thrift.protocol.c("packageName", 11, 7);
  private static final org.apache.thrift.protocol.c t = new org.apache.thrift.protocol.c("token", 11, 8);
  private static final org.apache.thrift.protocol.c u = new org.apache.thrift.protocol.c("deviceId", 11, 9);
  private static final org.apache.thrift.protocol.c v = new org.apache.thrift.protocol.c("aliasName", 11, 10);
  public String a;
  public d b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public String i;
  public String j;

  static
  {
    EnumMap localEnumMap = new EnumMap(q.a.class);
    localEnumMap.put(q.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(q.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(q.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(q.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(q.a.e, new org.apache.thrift.meta_data.b("regId", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(q.a.f, new org.apache.thrift.meta_data.b("appVersion", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(q.a.g, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(q.a.h, new org.apache.thrift.meta_data.b("token", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(q.a.i, new org.apache.thrift.meta_data.b("deviceId", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(q.a.j, new org.apache.thrift.meta_data.b("aliasName", 2, new org.apache.thrift.meta_data.c(11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(q.class, k);
  }

  public q a(String paramString)
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
        if (localc.a == 11)
        {
          this.e = paramf.p();
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
        if (localc.a == 11)
        {
          this.h = paramf.p();
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
    k();
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(q paramq)
  {
    if (paramq == null);
    boolean bool19;
    boolean bool20;
    do
    {
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
                        bool2 = paramq.a();
                      }
                      while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramq.a))));
                      bool3 = b();
                      bool4 = paramq.b();
                    }
                    while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paramq.b))));
                    bool5 = c();
                    bool6 = paramq.c();
                  }
                  while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramq.c))));
                  bool7 = d();
                  bool8 = paramq.d();
                }
                while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramq.d))));
                bool9 = e();
                bool10 = paramq.e();
              }
              while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.equals(paramq.e))));
              bool11 = f();
              bool12 = paramq.f();
            }
            while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.f.equals(paramq.f))));
            bool13 = g();
            bool14 = paramq.g();
          }
          while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.g.equals(paramq.g))));
          bool15 = h();
          bool16 = paramq.h();
        }
        while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.h.equals(paramq.h))));
        bool17 = i();
        bool18 = paramq.i();
      }
      while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (!this.i.equals(paramq.i))));
      bool19 = j();
      bool20 = paramq.j();
    }
    while (((bool19) || (bool20)) && ((!bool19) || (!bool20) || (!this.j.equals(paramq.j))));
    return true;
  }

  public int b(q paramq)
  {
    int i1;
    if (!getClass().equals(paramq.getClass()))
      i1 = getClass().getName().compareTo(paramq.getClass().getName());
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
                                            i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramq.a()));
                                          }
                                          while (i1 != 0);
                                          if (!a())
                                            break;
                                          i1 = org.apache.thrift.c.a(this.a, paramq.a);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramq.b()));
                                      }
                                      while (i1 != 0);
                                      if (!b())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.b, paramq.b);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramq.c()));
                                  }
                                  while (i1 != 0);
                                  if (!c())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.c, paramq.c);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramq.d()));
                              }
                              while (i1 != 0);
                              if (!d())
                                break;
                              i1 = org.apache.thrift.c.a(this.d, paramq.d);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramq.e()));
                          }
                          while (i1 != 0);
                          if (!e())
                            break;
                          i1 = org.apache.thrift.c.a(this.e, paramq.e);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramq.f()));
                      }
                      while (i1 != 0);
                      if (!f())
                        break;
                      i1 = org.apache.thrift.c.a(this.f, paramq.f);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramq.g()));
                  }
                  while (i1 != 0);
                  if (!g())
                    break;
                  i1 = org.apache.thrift.c.a(this.g, paramq.g);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(paramq.h()));
              }
              while (i1 != 0);
              if (!h())
                break;
              i1 = org.apache.thrift.c.a(this.h, paramq.h);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(paramq.i()));
          }
          while (i1 != 0);
          if (!i())
            break;
          i1 = org.apache.thrift.c.a(this.i, paramq.i);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(paramq.j()));
      }
      while (i1 != 0);
      if (!j())
        break;
      i1 = org.apache.thrift.c.a(this.j, paramq.j);
    }
    while (i1 != 0);
    return 0;
  }

  public q b(String paramString)
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
    if ((this.e != null) && (e()))
    {
      paramf.a(q);
      paramf.a(this.e);
    }
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
      paramf.a(this.h);
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

  public q c(String paramString)
  {
    this.e = paramString;
    return this;
  }

  public boolean c()
  {
    return this.c != null;
  }

  public q d(String paramString)
  {
    this.g = paramString;
    return this;
  }

  public boolean d()
  {
    return this.d != null;
  }

  public q e(String paramString)
  {
    this.h = paramString;
    return this;
  }

  public boolean e()
  {
    return this.e != null;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof q));
    return a((q)paramObject);
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
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionUnRegistration(");
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
        break label518;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label408;
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
          break label434;
        localStringBuilder.append("null");
        label155: if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("regId:");
          if (this.e != null)
            break label446;
          localStringBuilder.append("null");
        }
        label193: if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("appVersion:");
          if (this.f != null)
            break label458;
          localStringBuilder.append("null");
        }
        label231: if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.g != null)
            break label470;
          localStringBuilder.append("null");
        }
        label269: if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("token:");
          if (this.h != null)
            break label482;
          localStringBuilder.append("null");
        }
        label307: if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("deviceId:");
          if (this.i != null)
            break label494;
          localStringBuilder.append("null");
        }
        label345: if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("aliasName:");
          if (this.j != null)
            break label506;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label408: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label434: localStringBuilder.append(this.d);
        break label155;
        label446: localStringBuilder.append(this.e);
        break label193;
        label458: localStringBuilder.append(this.f);
        break label231;
        label470: localStringBuilder.append(this.g);
        break label269;
        label482: localStringBuilder.append(this.h);
        break label307;
        label494: localStringBuilder.append(this.i);
        break label345;
        label506: localStringBuilder.append(this.j);
      }
      label518: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.q
 * JD-Core Version:    0.6.0
 */