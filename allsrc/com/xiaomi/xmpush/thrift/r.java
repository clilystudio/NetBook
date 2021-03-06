package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class r
  implements Serializable, Cloneable, org.apache.thrift.b<r, r.a>
{
  public static final Map<r.a, org.apache.thrift.meta_data.b> i;
  private static final k j = new k("XmPushActionUnRegistrationResult");
  private static final org.apache.thrift.protocol.c k = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c l = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("request", 12, 5);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("errorCode", 10, 6);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("reason", 11, 7);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("packageName", 11, 8);
  public String a;
  public d b;
  public String c;
  public String d;
  public q e;
  public long f;
  public String g;
  public String h;
  private BitSet s = new BitSet(1);

  static
  {
    EnumMap localEnumMap = new EnumMap(r.a.class);
    localEnumMap.put(r.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(r.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(r.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(r.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(r.a.e, new org.apache.thrift.meta_data.b("request", 2, new org.apache.thrift.meta_data.g(12, q.class)));
    localEnumMap.put(r.a.f, new org.apache.thrift.meta_data.b("errorCode", 1, new org.apache.thrift.meta_data.c(10)));
    localEnumMap.put(r.a.g, new org.apache.thrift.meta_data.b("reason", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(r.a.h, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    i = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(r.class, i);
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
        if (localc.a == 12)
        {
          this.e = new q();
          this.e.a(paramf);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 6:
        if (localc.a == 10)
        {
          this.f = paramf.n();
          a(true);
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
    if (!f())
      throw new org.apache.thrift.protocol.g("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
    i();
  }

  public void a(boolean paramBoolean)
  {
    this.s.set(0, paramBoolean);
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(r paramr)
  {
    if (paramr == null);
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
                  bool2 = paramr.a();
                }
                while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramr.a))));
                bool3 = b();
                bool4 = paramr.b();
              }
              while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paramr.b))));
              bool5 = c();
              bool6 = paramr.c();
            }
            while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramr.c))));
            bool7 = d();
            bool8 = paramr.d();
          }
          while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramr.d))));
          bool9 = e();
          bool10 = paramr.e();
        }
        while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.a(paramr.e)) || (this.f != paramr.f)));
        bool11 = g();
        bool12 = paramr.g();
      }
      while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.g.equals(paramr.g))));
      bool13 = h();
      bool14 = paramr.h();
    }
    while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.h.equals(paramr.h))));
    return true;
  }

  public int b(r paramr)
  {
    int i1;
    if (!getClass().equals(paramr.getClass()))
      i1 = getClass().getName().compareTo(paramr.getClass().getName());
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
                                    i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramr.a()));
                                  }
                                  while (i1 != 0);
                                  if (!a())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.a, paramr.a);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramr.b()));
                              }
                              while (i1 != 0);
                              if (!b())
                                break;
                              i1 = org.apache.thrift.c.a(this.b, paramr.b);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramr.c()));
                          }
                          while (i1 != 0);
                          if (!c())
                            break;
                          i1 = org.apache.thrift.c.a(this.c, paramr.c);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramr.d()));
                      }
                      while (i1 != 0);
                      if (!d())
                        break;
                      i1 = org.apache.thrift.c.a(this.d, paramr.d);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramr.e()));
                  }
                  while (i1 != 0);
                  if (!e())
                    break;
                  i1 = org.apache.thrift.c.a(this.e, paramr.e);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramr.f()));
              }
              while (i1 != 0);
              if (!f())
                break;
              i1 = org.apache.thrift.c.a(this.f, paramr.f);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramr.g()));
          }
          while (i1 != 0);
          if (!g())
            break;
          i1 = org.apache.thrift.c.a(this.g, paramr.g);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(paramr.h()));
      }
      while (i1 != 0);
      if (!h())
        break;
      i1 = org.apache.thrift.c.a(this.h, paramr.h);
    }
    while (i1 != 0);
    return 0;
  }

  public void b(f paramf)
  {
    i();
    paramf.a();
    if ((this.a != null) && (a()))
    {
      paramf.a(k);
      paramf.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramf.a(l);
      this.b.b(paramf);
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
    if ((this.e != null) && (e()))
    {
      paramf.a(o);
      this.e.b(paramf);
    }
    paramf.a(p);
    paramf.a(this.f);
    if ((this.g != null) && (g()))
    {
      paramf.a(q);
      paramf.a(this.g);
    }
    if ((this.h != null) && (h()))
    {
      paramf.a(r);
      paramf.a(this.h);
    }
    paramf.c();
    paramf.b();
  }

  public boolean b()
  {
    return this.b != null;
  }

  public boolean c()
  {
    return this.c != null;
  }

  public boolean d()
  {
    return this.d != null;
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
    while (!(paramObject instanceof r));
    return a((r)paramObject);
  }

  public boolean f()
  {
    return this.s.get(0);
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

  public void i()
  {
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'appId' was not present! Struct: " + toString());
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionUnRegistrationResult(");
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
        break label393;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label319;
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
          break label345;
        localStringBuilder.append("null");
        label155: if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("request:");
          if (this.e != null)
            break label357;
          localStringBuilder.append("null");
        }
        label193: localStringBuilder.append(", ");
        localStringBuilder.append("errorCode:");
        localStringBuilder.append(this.f);
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("reason:");
          if (this.g != null)
            break label369;
          localStringBuilder.append("null");
        }
        label256: if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.h != null)
            break label381;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label319: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label345: localStringBuilder.append(this.d);
        break label155;
        label357: localStringBuilder.append(this.e);
        break label193;
        label369: localStringBuilder.append(this.g);
        break label256;
        label381: localStringBuilder.append(this.h);
      }
      label393: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.r
 * JD-Core Version:    0.6.0
 */