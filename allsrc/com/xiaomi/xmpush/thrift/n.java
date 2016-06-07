package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class n
  implements Serializable, Cloneable, org.apache.thrift.b<n, n.a>
{
  public static final Map<n.a, org.apache.thrift.meta_data.b> l;
  private static final k m = new k("XmPushActionSendMessage");
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("packageName", 11, 5);
  private static final org.apache.thrift.protocol.c s = new org.apache.thrift.protocol.c("topic", 11, 6);
  private static final org.apache.thrift.protocol.c t = new org.apache.thrift.protocol.c("aliasName", 11, 7);
  private static final org.apache.thrift.protocol.c u = new org.apache.thrift.protocol.c("message", 12, 8);
  private static final org.apache.thrift.protocol.c v = new org.apache.thrift.protocol.c("needAck", 2, 9);
  private static final org.apache.thrift.protocol.c w = new org.apache.thrift.protocol.c("params", 13, 10);
  private static final org.apache.thrift.protocol.c x = new org.apache.thrift.protocol.c("category", 11, 11);
  public String a;
  public d b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public b h;
  public boolean i = true;
  public Map<String, String> j;
  public String k;
  private BitSet y = new BitSet(1);

  static
  {
    EnumMap localEnumMap = new EnumMap(n.a.class);
    localEnumMap.put(n.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(n.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(n.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(n.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(n.a.e, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(n.a.f, new org.apache.thrift.meta_data.b("topic", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(n.a.g, new org.apache.thrift.meta_data.b("aliasName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(n.a.h, new org.apache.thrift.meta_data.b("message", 2, new org.apache.thrift.meta_data.g(12, b.class)));
    localEnumMap.put(n.a.i, new org.apache.thrift.meta_data.b("needAck", 2, new org.apache.thrift.meta_data.c(2)));
    localEnumMap.put(n.a.j, new org.apache.thrift.meta_data.b("params", 2, new org.apache.thrift.meta_data.e(13, new org.apache.thrift.meta_data.c(11), new org.apache.thrift.meta_data.c(11))));
    localEnumMap.put(n.a.k, new org.apache.thrift.meta_data.b("category", 2, new org.apache.thrift.meta_data.c(11)));
    l = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(n.class, l);
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
        if (localc.a == 12)
        {
          this.h = new b();
          this.h.a(paramf);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 9:
        if (localc.a == 2)
        {
          this.i = paramf.j();
          a(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 10:
        if (localc.a == 13)
        {
          org.apache.thrift.protocol.e locale = paramf.g();
          this.j = new HashMap(2 * locale.c);
          for (int i1 = 0; i1 < locale.c; i1++)
          {
            String str1 = paramf.p();
            String str2 = paramf.p();
            this.j.put(str1, str2);
          }
        }
        i.a(paramf, localc.a);
        break;
      case 11:
        if (localc.a == 11)
        {
          this.k = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    r();
  }

  public void a(boolean paramBoolean)
  {
    this.y.set(0, paramBoolean);
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(n paramn)
  {
    if (paramn == null);
    boolean bool21;
    boolean bool22;
    do
    {
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
                          bool2 = paramn.a();
                        }
                        while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramn.a))));
                        bool3 = b();
                        bool4 = paramn.b();
                      }
                      while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paramn.b))));
                      bool5 = d();
                      bool6 = paramn.d();
                    }
                    while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramn.c))));
                    bool7 = f();
                    bool8 = paramn.f();
                  }
                  while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramn.d))));
                  bool9 = g();
                  bool10 = paramn.g();
                }
                while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.equals(paramn.e))));
                bool11 = i();
                bool12 = paramn.i();
              }
              while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.f.equals(paramn.f))));
              bool13 = k();
              bool14 = paramn.k();
            }
            while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.g.equals(paramn.g))));
            bool15 = m();
            bool16 = paramn.m();
          }
          while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.h.a(paramn.h))));
          bool17 = n();
          bool18 = paramn.n();
        }
        while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (this.i != paramn.i)));
        bool19 = o();
        bool20 = paramn.o();
      }
      while (((bool19) || (bool20)) && ((!bool19) || (!bool20) || (!this.j.equals(paramn.j))));
      bool21 = q();
      bool22 = paramn.q();
    }
    while (((bool21) || (bool22)) && ((!bool21) || (!bool22) || (!this.k.equals(paramn.k))));
    return true;
  }

  public int b(n paramn)
  {
    int i1;
    if (!getClass().equals(paramn.getClass()))
      i1 = getClass().getName().compareTo(paramn.getClass().getName());
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
                                                i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramn.a()));
                                              }
                                              while (i1 != 0);
                                              if (!a())
                                                break;
                                              i1 = org.apache.thrift.c.a(this.a, paramn.a);
                                            }
                                            while (i1 != 0);
                                            i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramn.b()));
                                          }
                                          while (i1 != 0);
                                          if (!b())
                                            break;
                                          i1 = org.apache.thrift.c.a(this.b, paramn.b);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramn.d()));
                                      }
                                      while (i1 != 0);
                                      if (!d())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.c, paramn.c);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramn.f()));
                                  }
                                  while (i1 != 0);
                                  if (!f())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.d, paramn.d);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramn.g()));
                              }
                              while (i1 != 0);
                              if (!g())
                                break;
                              i1 = org.apache.thrift.c.a(this.e, paramn.e);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(paramn.i()));
                          }
                          while (i1 != 0);
                          if (!i())
                            break;
                          i1 = org.apache.thrift.c.a(this.f, paramn.f);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(paramn.k()));
                      }
                      while (i1 != 0);
                      if (!k())
                        break;
                      i1 = org.apache.thrift.c.a(this.g, paramn.g);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(paramn.m()));
                  }
                  while (i1 != 0);
                  if (!m())
                    break;
                  i1 = org.apache.thrift.c.a(this.h, paramn.h);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(paramn.n()));
              }
              while (i1 != 0);
              if (!n())
                break;
              i1 = org.apache.thrift.c.a(this.i, paramn.i);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(paramn.o()));
          }
          while (i1 != 0);
          if (!o())
            break;
          i1 = org.apache.thrift.c.a(this.j, paramn.j);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(paramn.q()));
      }
      while (i1 != 0);
      if (!q())
        break;
      i1 = org.apache.thrift.c.a(this.k, paramn.k);
    }
    while (i1 != 0);
    return 0;
  }

  public void b(f paramf)
  {
    r();
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
    if ((this.e != null) && (g()))
    {
      paramf.a(r);
      paramf.a(this.e);
    }
    if ((this.f != null) && (i()))
    {
      paramf.a(s);
      paramf.a(this.f);
    }
    if ((this.g != null) && (k()))
    {
      paramf.a(t);
      paramf.a(this.g);
    }
    if ((this.h != null) && (m()))
    {
      paramf.a(u);
      this.h.b(paramf);
    }
    if (n())
    {
      paramf.a(v);
      paramf.a(this.i);
    }
    if ((this.j != null) && (o()))
    {
      paramf.a(w);
      paramf.a(new org.apache.thrift.protocol.e(11, 11, this.j.size()));
      Iterator localIterator = this.j.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramf.a((String)localEntry.getKey());
        paramf.a((String)localEntry.getValue());
      }
    }
    if ((this.k != null) && (q()))
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

  public String c()
  {
    return this.c;
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
    while (!(paramObject instanceof n));
    return a((n)paramObject);
  }

  public boolean f()
  {
    return this.d != null;
  }

  public boolean g()
  {
    return this.e != null;
  }

  public String h()
  {
    return this.f;
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean i()
  {
    return this.f != null;
  }

  public String j()
  {
    return this.g;
  }

  public boolean k()
  {
    return this.g != null;
  }

  public b l()
  {
    return this.h;
  }

  public boolean m()
  {
    return this.h != null;
  }

  public boolean n()
  {
    return this.y.get(0);
  }

  public boolean o()
  {
    return this.j != null;
  }

  public String p()
  {
    return this.k;
  }

  public boolean q()
  {
    return this.k != null;
  }

  public void r()
  {
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'appId' was not present! Struct: " + toString());
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionSendMessage(");
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
        break label550;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label440;
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
          break label466;
        localStringBuilder.append("null");
        label155: if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.e != null)
            break label478;
          localStringBuilder.append("null");
        }
        label193: if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("topic:");
          if (this.f != null)
            break label490;
          localStringBuilder.append("null");
        }
        label231: if (k())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("aliasName:");
          if (this.g != null)
            break label502;
          localStringBuilder.append("null");
        }
        label269: if (m())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("message:");
          if (this.h != null)
            break label514;
          localStringBuilder.append("null");
        }
        label307: if (n())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("needAck:");
          localStringBuilder.append(this.i);
        }
        if (o())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("params:");
          if (this.j != null)
            break label526;
          localStringBuilder.append("null");
        }
        label377: if (q())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.k != null)
            break label538;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label440: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label466: localStringBuilder.append(this.d);
        break label155;
        label478: localStringBuilder.append(this.e);
        break label193;
        label490: localStringBuilder.append(this.f);
        break label231;
        label502: localStringBuilder.append(this.g);
        break label269;
        label514: localStringBuilder.append(this.h);
        break label307;
        label526: localStringBuilder.append(this.j);
        break label377;
        label538: localStringBuilder.append(this.k);
      }
      label550: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.n
 * JD-Core Version:    0.6.0
 */