package com.xiaomi.common.logger.thrift.mfs;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.j;
import org.apache.thrift.protocol.k;

public class b
  implements Serializable, Cloneable, org.apache.thrift.b<b, b.a>
{
  public static final Map<b.a, org.apache.thrift.meta_data.b> a;
  private static final k b = new k("HttpApi");
  private static final org.apache.thrift.protocol.c c = new org.apache.thrift.protocol.c("category", 11, 1);
  private static final org.apache.thrift.protocol.c d = new org.apache.thrift.protocol.c("uuid", 11, 2);
  private static final org.apache.thrift.protocol.c e = new org.apache.thrift.protocol.c("version", 11, 3);
  private static final org.apache.thrift.protocol.c f = new org.apache.thrift.protocol.c("network", 11, 4);
  private static final org.apache.thrift.protocol.c g = new org.apache.thrift.protocol.c("client_ip", 11, 5);
  private static final org.apache.thrift.protocol.c h = new org.apache.thrift.protocol.c("location", 12, 6);
  private static final org.apache.thrift.protocol.c i = new org.apache.thrift.protocol.c("host_info", 14, 7);
  private static final org.apache.thrift.protocol.c j = new org.apache.thrift.protocol.c("version_type", 11, 8);
  private static final org.apache.thrift.protocol.c k = new org.apache.thrift.protocol.c("app_name", 11, 9);
  private static final org.apache.thrift.protocol.c l = new org.apache.thrift.protocol.c("app_version", 11, 10);
  private String m = "";
  private String n;
  private String o;
  private String p;
  private String q;
  private e r;
  private Set<a> s;
  private String t = "";
  private String u = "";
  private String v = "";

  static
  {
    EnumMap localEnumMap = new EnumMap(b.a.class);
    localEnumMap.put(b.a.a, new org.apache.thrift.meta_data.b("category", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.b, new org.apache.thrift.meta_data.b("uuid", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.c, new org.apache.thrift.meta_data.b("version", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.d, new org.apache.thrift.meta_data.b("network", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.e, new org.apache.thrift.meta_data.b("client_ip", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.f, new org.apache.thrift.meta_data.b("location", 2, new org.apache.thrift.meta_data.g(12, e.class)));
    localEnumMap.put(b.a.g, new org.apache.thrift.meta_data.b("host_info", 2, new org.apache.thrift.meta_data.f(14, new org.apache.thrift.meta_data.g(12, a.class))));
    localEnumMap.put(b.a.h, new org.apache.thrift.meta_data.b("version_type", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.i, new org.apache.thrift.meta_data.b("app_name", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(b.a.j, new org.apache.thrift.meta_data.b("app_version", 2, new org.apache.thrift.meta_data.c(11)));
    a = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(b.class, a);
  }

  public b a(e parame)
  {
    this.r = parame;
    return this;
  }

  public b a(String paramString)
  {
    this.m = paramString;
    return this;
  }

  public void a(a parama)
  {
    if (this.s == null)
      this.s = new HashSet();
    this.s.add(parama);
  }

  public void a(org.apache.thrift.protocol.f paramf)
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
          this.m = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 2:
        if (localc.a == 11)
        {
          this.n = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 3:
        if (localc.a == 11)
        {
          this.o = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 4:
        if (localc.a == 11)
        {
          this.p = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 5:
        if (localc.a == 11)
        {
          this.q = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 6:
        if (localc.a == 12)
        {
          this.r = new e();
          this.r.a(paramf);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 7:
        if (localc.a == 14)
        {
          j localj = paramf.i();
          this.s = new HashSet(2 * localj.b);
          for (int i1 = 0; i1 < localj.b; i1++)
          {
            a locala = new a();
            locala.a(paramf);
            this.s.add(locala);
          }
        }
        i.a(paramf, localc.a);
        break;
      case 8:
        if (localc.a == 11)
        {
          this.t = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 9:
        if (localc.a == 11)
        {
          this.u = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 10:
        if (localc.a == 11)
        {
          this.v = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    l();
  }

  public boolean a()
  {
    return this.m != null;
  }

  public boolean a(b paramb)
  {
    if (paramb == null);
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
                        bool2 = paramb.a();
                      }
                      while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.m.equals(paramb.m))));
                      bool3 = b();
                      bool4 = paramb.b();
                    }
                    while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.n.equals(paramb.n))));
                    bool5 = c();
                    bool6 = paramb.c();
                  }
                  while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.o.equals(paramb.o))));
                  bool7 = d();
                  bool8 = paramb.d();
                }
                while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.p.equals(paramb.p))));
                bool9 = e();
                bool10 = paramb.e();
              }
              while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.q.equals(paramb.q))));
              bool11 = f();
              bool12 = paramb.f();
            }
            while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.r.a(paramb.r))));
            bool13 = h();
            bool14 = paramb.h();
          }
          while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.s.equals(paramb.s))));
          bool15 = i();
          bool16 = paramb.i();
        }
        while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.t.equals(paramb.t))));
        bool17 = j();
        bool18 = paramb.j();
      }
      while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (!this.u.equals(paramb.u))));
      bool19 = k();
      bool20 = paramb.k();
    }
    while (((bool19) || (bool20)) && ((!bool19) || (!bool20) || (!this.v.equals(paramb.v))));
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
                                          i1 = org.apache.thrift.c.a(this.m, paramb.m);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramb.b()));
                                      }
                                      while (i1 != 0);
                                      if (!b())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.n, paramb.n);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramb.c()));
                                  }
                                  while (i1 != 0);
                                  if (!c())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.o, paramb.o);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramb.d()));
                              }
                              while (i1 != 0);
                              if (!d())
                                break;
                              i1 = org.apache.thrift.c.a(this.p, paramb.p);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramb.e()));
                          }
                          while (i1 != 0);
                          if (!e())
                            break;
                          i1 = org.apache.thrift.c.a(this.q, paramb.q);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramb.f()));
                      }
                      while (i1 != 0);
                      if (!f())
                        break;
                      i1 = org.apache.thrift.c.a(this.r, paramb.r);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(paramb.h()));
                  }
                  while (i1 != 0);
                  if (!h())
                    break;
                  i1 = org.apache.thrift.c.a(this.s, paramb.s);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(paramb.i()));
              }
              while (i1 != 0);
              if (!i())
                break;
              i1 = org.apache.thrift.c.a(this.t, paramb.t);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(paramb.j()));
          }
          while (i1 != 0);
          if (!j())
            break;
          i1 = org.apache.thrift.c.a(this.u, paramb.u);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(paramb.k()));
      }
      while (i1 != 0);
      if (!k())
        break;
      i1 = org.apache.thrift.c.a(this.v, paramb.v);
    }
    while (i1 != 0);
    return 0;
  }

  public b b(String paramString)
  {
    this.n = paramString;
    return this;
  }

  public void b(org.apache.thrift.protocol.f paramf)
  {
    l();
    paramf.a();
    if (this.m != null)
    {
      paramf.a(c);
      paramf.a(this.m);
    }
    if (this.n != null)
    {
      paramf.a(d);
      paramf.a(this.n);
    }
    if (this.o != null)
    {
      paramf.a(e);
      paramf.a(this.o);
    }
    if (this.p != null)
    {
      paramf.a(f);
      paramf.a(this.p);
    }
    if ((this.q != null) && (e()))
    {
      paramf.a(g);
      paramf.a(this.q);
    }
    if ((this.r != null) && (f()))
    {
      paramf.a(h);
      this.r.b(paramf);
    }
    if ((this.s != null) && (h()))
    {
      paramf.a(i);
      paramf.a(new j(12, this.s.size()));
      Iterator localIterator = this.s.iterator();
      while (localIterator.hasNext())
        ((a)localIterator.next()).b(paramf);
    }
    if ((this.t != null) && (i()))
    {
      paramf.a(j);
      paramf.a(this.t);
    }
    if ((this.u != null) && (j()))
    {
      paramf.a(k);
      paramf.a(this.u);
    }
    if ((this.v != null) && (k()))
    {
      paramf.a(l);
      paramf.a(this.v);
    }
    paramf.c();
    paramf.b();
  }

  public boolean b()
  {
    return this.n != null;
  }

  public b c(String paramString)
  {
    this.o = paramString;
    return this;
  }

  public boolean c()
  {
    return this.o != null;
  }

  public b d(String paramString)
  {
    this.p = paramString;
    return this;
  }

  public boolean d()
  {
    return this.p != null;
  }

  public b e(String paramString)
  {
    this.q = paramString;
    return this;
  }

  public boolean e()
  {
    return this.q != null;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof b));
    return a((b)paramObject);
  }

  public b f(String paramString)
  {
    this.t = paramString;
    return this;
  }

  public boolean f()
  {
    return this.r != null;
  }

  public int g()
  {
    if (this.s == null)
      return 0;
    return this.s.size();
  }

  public b g(String paramString)
  {
    this.u = paramString;
    return this;
  }

  public b h(String paramString)
  {
    this.v = paramString;
    return this;
  }

  public boolean h()
  {
    return this.s != null;
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean i()
  {
    return this.t != null;
  }

  public boolean j()
  {
    return this.u != null;
  }

  public boolean k()
  {
    return this.v != null;
  }

  public void l()
  {
    if (this.m == null)
      throw new org.apache.thrift.protocol.g("Required field 'category' was not present! Struct: " + toString());
    if (this.n == null)
      throw new org.apache.thrift.protocol.g("Required field 'uuid' was not present! Struct: " + toString());
    if (this.o == null)
      throw new org.apache.thrift.protocol.g("Required field 'version' was not present! Struct: " + toString());
    if (this.p == null)
      throw new org.apache.thrift.protocol.g("Required field 'network' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("HttpApi(");
    localStringBuilder.append("category:");
    if (this.m == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("uuid:");
      if (this.n != null)
        break label380;
      localStringBuilder.append("null");
      label65: localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      if (this.o != null)
        break label392;
      localStringBuilder.append("null");
      label96: localStringBuilder.append(", ");
      localStringBuilder.append("network:");
      if (this.p != null)
        break label404;
      localStringBuilder.append("null");
      label127: if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("client_ip:");
        if (this.q != null)
          break label416;
        localStringBuilder.append("null");
      }
      label165: if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("location:");
        if (this.r != null)
          break label428;
        localStringBuilder.append("null");
      }
      label203: if (h())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("host_info:");
        if (this.s != null)
          break label440;
        localStringBuilder.append("null");
      }
      label241: if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("version_type:");
        if (this.t != null)
          break label452;
        localStringBuilder.append("null");
      }
      label279: if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("app_name:");
        if (this.u != null)
          break label464;
        localStringBuilder.append("null");
      }
      label317: if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("app_version:");
        if (this.v != null)
          break label476;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.m);
      break;
      label380: localStringBuilder.append(this.n);
      break label65;
      label392: localStringBuilder.append(this.o);
      break label96;
      label404: localStringBuilder.append(this.p);
      break label127;
      label416: localStringBuilder.append(this.q);
      break label165;
      label428: localStringBuilder.append(this.r);
      break label203;
      label440: localStringBuilder.append(this.s);
      break label241;
      label452: localStringBuilder.append(this.t);
      break label279;
      label464: localStringBuilder.append(this.u);
      break label317;
      label476: localStringBuilder.append(this.v);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.common.logger.thrift.mfs.b
 * JD-Core Version:    0.6.0
 */