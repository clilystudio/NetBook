package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class g
  implements Serializable, Cloneable, org.apache.thrift.b<g, g.a>
{
  public static final Map<g.a, org.apache.thrift.meta_data.b> l;
  private static final k m = new k("XmPushActionCommandResult");
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("cmdName", 11, 5);
  private static final org.apache.thrift.protocol.c s = new org.apache.thrift.protocol.c("request", 12, 6);
  private static final org.apache.thrift.protocol.c t = new org.apache.thrift.protocol.c("errorCode", 10, 7);
  private static final org.apache.thrift.protocol.c u = new org.apache.thrift.protocol.c("reason", 11, 8);
  private static final org.apache.thrift.protocol.c v = new org.apache.thrift.protocol.c("packageName", 11, 9);
  private static final org.apache.thrift.protocol.c w = new org.apache.thrift.protocol.c("cmdArgs", 15, 10);
  private static final org.apache.thrift.protocol.c x = new org.apache.thrift.protocol.c("category", 11, 12);
  public String a;
  public d b;
  public String c;
  public String d;
  public String e;
  public f f;
  public long g;
  public String h;
  public String i;
  public List<String> j;
  public String k;
  private BitSet y = new BitSet(1);

  static
  {
    EnumMap localEnumMap = new EnumMap(g.a.class);
    localEnumMap.put(g.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(g.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(g.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(g.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(g.a.e, new org.apache.thrift.meta_data.b("cmdName", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(g.a.f, new org.apache.thrift.meta_data.b("request", 2, new org.apache.thrift.meta_data.g(12, f.class)));
    localEnumMap.put(g.a.g, new org.apache.thrift.meta_data.b("errorCode", 1, new org.apache.thrift.meta_data.c(10)));
    localEnumMap.put(g.a.h, new org.apache.thrift.meta_data.b("reason", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(g.a.i, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(g.a.j, new org.apache.thrift.meta_data.b("cmdArgs", 2, new org.apache.thrift.meta_data.d(15, new org.apache.thrift.meta_data.c(11))));
    localEnumMap.put(g.a.k, new org.apache.thrift.meta_data.b("category", 2, new org.apache.thrift.meta_data.c(11)));
    l = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(g.class, l);
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
      case 11:
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
        if (localc.a == 12)
        {
          this.f = new f();
          this.f.a(paramf);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 7:
        if (localc.a == 10)
        {
          this.g = paramf.n();
          a(true);
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
        if (localc.a == 15)
        {
          org.apache.thrift.protocol.d locald = paramf.h();
          this.j = new ArrayList(locald.b);
          for (int i1 = 0; i1 < locald.b; i1++)
          {
            String str = paramf.p();
            this.j.add(str);
          }
        }
        i.a(paramf, localc.a);
        break;
      case 12:
        if (localc.a == 11)
        {
          this.k = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    if (!h())
      throw new org.apache.thrift.protocol.g("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
    o();
  }

  public void a(boolean paramBoolean)
  {
    this.y.set(0, paramBoolean);
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(g paramg)
  {
    if (paramg == null);
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
                        bool2 = paramg.a();
                      }
                      while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramg.a))));
                      bool3 = b();
                      bool4 = paramg.b();
                    }
                    while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paramg.b))));
                    bool5 = c();
                    bool6 = paramg.c();
                  }
                  while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramg.c))));
                  bool7 = d();
                  bool8 = paramg.d();
                }
                while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramg.d))));
                bool9 = f();
                bool10 = paramg.f();
              }
              while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.equals(paramg.e))));
              bool11 = g();
              bool12 = paramg.g();
            }
            while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.f.a(paramg.f)) || (this.g != paramg.g)));
            bool13 = i();
            bool14 = paramg.i();
          }
          while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.h.equals(paramg.h))));
          bool15 = j();
          bool16 = paramg.j();
        }
        while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.i.equals(paramg.i))));
        bool17 = l();
        bool18 = paramg.l();
      }
      while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (!this.j.equals(paramg.j))));
      bool19 = n();
      bool20 = paramg.n();
    }
    while (((bool19) || (bool20)) && ((!bool19) || (!bool20) || (!this.k.equals(paramg.k))));
    return true;
  }

  public int b(g paramg)
  {
    int i1;
    if (!getClass().equals(paramg.getClass()))
      i1 = getClass().getName().compareTo(paramg.getClass().getName());
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
                                            do
                                            {
                                              do
                                              {
                                                return i1;
                                                i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramg.a()));
                                              }
                                              while (i1 != 0);
                                              if (!a())
                                                break;
                                              i1 = org.apache.thrift.c.a(this.a, paramg.a);
                                            }
                                            while (i1 != 0);
                                            i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramg.b()));
                                          }
                                          while (i1 != 0);
                                          if (!b())
                                            break;
                                          i1 = org.apache.thrift.c.a(this.b, paramg.b);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramg.c()));
                                      }
                                      while (i1 != 0);
                                      if (!c())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.c, paramg.c);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramg.d()));
                                  }
                                  while (i1 != 0);
                                  if (!d())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.d, paramg.d);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramg.f()));
                              }
                              while (i1 != 0);
                              if (!f())
                                break;
                              i1 = org.apache.thrift.c.a(this.e, paramg.e);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramg.g()));
                          }
                          while (i1 != 0);
                          if (!g())
                            break;
                          i1 = org.apache.thrift.c.a(this.f, paramg.f);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(paramg.h()));
                      }
                      while (i1 != 0);
                      if (!h())
                        break;
                      i1 = org.apache.thrift.c.a(this.g, paramg.g);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(paramg.i()));
                  }
                  while (i1 != 0);
                  if (!i())
                    break;
                  i1 = org.apache.thrift.c.a(this.h, paramg.h);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(paramg.j()));
              }
              while (i1 != 0);
              if (!j())
                break;
              i1 = org.apache.thrift.c.a(this.i, paramg.i);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(paramg.l()));
          }
          while (i1 != 0);
          if (!l())
            break;
          i1 = org.apache.thrift.c.a(this.j, paramg.j);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(paramg.n()));
      }
      while (i1 != 0);
      if (!n())
        break;
      i1 = org.apache.thrift.c.a(this.k, paramg.k);
    }
    while (i1 != 0);
    return 0;
  }

  public void b(org.apache.thrift.protocol.f paramf)
  {
    o();
    paramf.a();
    if ((this.a != null) && (a()))
    {
      paramf.a(n);
      paramf.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramf.a(o);
      this.b.b(paramf);
    }
    if (this.c != null)
    {
      paramf.a(p);
      paramf.a(this.c);
    }
    if (this.d != null)
    {
      paramf.a(q);
      paramf.a(this.d);
    }
    if (this.e != null)
    {
      paramf.a(r);
      paramf.a(this.e);
    }
    if ((this.f != null) && (g()))
    {
      paramf.a(s);
      this.f.b(paramf);
    }
    paramf.a(t);
    paramf.a(this.g);
    if ((this.h != null) && (i()))
    {
      paramf.a(u);
      paramf.a(this.h);
    }
    if ((this.i != null) && (j()))
    {
      paramf.a(v);
      paramf.a(this.i);
    }
    if ((this.j != null) && (l()))
    {
      paramf.a(w);
      paramf.a(new org.apache.thrift.protocol.d(11, this.j.size()));
      Iterator localIterator = this.j.iterator();
      while (localIterator.hasNext())
        paramf.a((String)localIterator.next());
    }
    if ((this.k != null) && (n()))
    {
      paramf.a(x);
      paramf.a(this.k);
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

  public String e()
  {
    return this.e;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof g));
    return a((g)paramObject);
  }

  public boolean f()
  {
    return this.e != null;
  }

  public boolean g()
  {
    return this.f != null;
  }

  public boolean h()
  {
    return this.y.get(0);
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean i()
  {
    return this.h != null;
  }

  public boolean j()
  {
    return this.i != null;
  }

  public List<String> k()
  {
    return this.j;
  }

  public boolean l()
  {
    return this.j != null;
  }

  public String m()
  {
    return this.k;
  }

  public boolean n()
  {
    return this.k != null;
  }

  public void o()
  {
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'appId' was not present! Struct: " + toString());
    if (this.e == null)
      throw new org.apache.thrift.protocol.g("Required field 'cmdName' was not present! Struct: " + toString());
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionCommandResult(");
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
        break label536;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label426;
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
          break label452;
        localStringBuilder.append("null");
        label155: localStringBuilder.append(", ");
        localStringBuilder.append("cmdName:");
        if (this.e != null)
          break label464;
        localStringBuilder.append("null");
        label186: if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("request:");
          if (this.f != null)
            break label476;
          localStringBuilder.append("null");
        }
        label224: localStringBuilder.append(", ");
        localStringBuilder.append("errorCode:");
        localStringBuilder.append(this.g);
        if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("reason:");
          if (this.h != null)
            break label488;
          localStringBuilder.append("null");
        }
        label287: if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.i != null)
            break label500;
          localStringBuilder.append("null");
        }
        label325: if (l())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("cmdArgs:");
          if (this.j != null)
            break label512;
          localStringBuilder.append("null");
        }
        label363: if (n())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.k != null)
            break label524;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label426: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label452: localStringBuilder.append(this.d);
        break label155;
        label464: localStringBuilder.append(this.e);
        break label186;
        label476: localStringBuilder.append(this.f);
        break label224;
        label488: localStringBuilder.append(this.h);
        break label287;
        label500: localStringBuilder.append(this.i);
        break label325;
        label512: localStringBuilder.append(this.j);
        break label363;
        label524: localStringBuilder.append(this.k);
      }
      label536: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.g
 * JD-Core Version:    0.6.0
 */