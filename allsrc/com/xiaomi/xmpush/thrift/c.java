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
import org.apache.thrift.protocol.g;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class c
  implements Serializable, Cloneable, org.apache.thrift.b<c, c.a>
{
  public static final Map<c.a, org.apache.thrift.meta_data.b> k;
  private static final k l = new k("PushMetaInfo");
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("id", 11, 1);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("messageTs", 10, 2);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("topic", 11, 3);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("title", 11, 4);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("description", 11, 5);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("notifyType", 8, 6);
  private static final org.apache.thrift.protocol.c s = new org.apache.thrift.protocol.c("url", 11, 7);
  private static final org.apache.thrift.protocol.c t = new org.apache.thrift.protocol.c("passThrough", 8, 8);
  private static final org.apache.thrift.protocol.c u = new org.apache.thrift.protocol.c("notifyId", 8, 9);
  private static final org.apache.thrift.protocol.c v = new org.apache.thrift.protocol.c("extra", 13, 10);
  public String a;
  public long b;
  public String c;
  public String d;
  public String e;
  public int f;
  public String g;
  public int h;
  public int i;
  public Map<String, String> j;
  private BitSet w = new BitSet(4);

  static
  {
    EnumMap localEnumMap = new EnumMap(c.a.class);
    localEnumMap.put(c.a.a, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(c.a.b, new org.apache.thrift.meta_data.b("messageTs", 1, new org.apache.thrift.meta_data.c(10)));
    localEnumMap.put(c.a.c, new org.apache.thrift.meta_data.b("topic", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(c.a.d, new org.apache.thrift.meta_data.b("title", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(c.a.e, new org.apache.thrift.meta_data.b("description", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(c.a.f, new org.apache.thrift.meta_data.b("notifyType", 2, new org.apache.thrift.meta_data.c(8)));
    localEnumMap.put(c.a.g, new org.apache.thrift.meta_data.b("url", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(c.a.h, new org.apache.thrift.meta_data.b("passThrough", 2, new org.apache.thrift.meta_data.c(8)));
    localEnumMap.put(c.a.i, new org.apache.thrift.meta_data.b("notifyId", 2, new org.apache.thrift.meta_data.c(8)));
    localEnumMap.put(c.a.j, new org.apache.thrift.meta_data.b("extra", 2, new org.apache.thrift.meta_data.e(13, new org.apache.thrift.meta_data.c(11), new org.apache.thrift.meta_data.c(11))));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(c.class, k);
  }

  public c a(long paramLong)
  {
    this.b = paramLong;
    a(true);
    return this;
  }

  public c a(String paramString)
  {
    this.a = paramString;
    return this;
  }

  public String a()
  {
    return this.a;
  }

  public void a(String paramString1, String paramString2)
  {
    if (this.j == null)
      this.j = new HashMap();
    this.j.put(paramString1, paramString2);
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
        if (localc.a == 10)
        {
          this.b = paramf.n();
          a(true);
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
        if (localc.a == 8)
        {
          this.f = paramf.m();
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
        if (localc.a == 8)
        {
          this.h = paramf.m();
          c(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 9:
        if (localc.a == 8)
        {
          this.i = paramf.m();
          d(true);
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
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    if (!d())
      throw new g("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
    t();
  }

  public void a(boolean paramBoolean)
  {
    this.w.set(0, paramBoolean);
  }

  public boolean a(c paramc)
  {
    if (paramc == null);
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
                      bool1 = b();
                      bool2 = paramc.b();
                    }
                    while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramc.a)) || (this.b != paramc.b)));
                    bool3 = f();
                    bool4 = paramc.f();
                  }
                  while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.c.equals(paramc.c))));
                  bool5 = h();
                  bool6 = paramc.h();
                }
                while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.d.equals(paramc.d))));
                bool7 = j();
                bool8 = paramc.j();
              }
              while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.e.equals(paramc.e))));
              bool9 = l();
              bool10 = paramc.l();
            }
            while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (this.f != paramc.f)));
            bool11 = m();
            bool12 = paramc.m();
          }
          while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.g.equals(paramc.g))));
          bool13 = o();
          bool14 = paramc.o();
        }
        while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (this.h != paramc.h)));
        bool15 = q();
        bool16 = paramc.q();
      }
      while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (this.i != paramc.i)));
      bool17 = s();
      bool18 = paramc.s();
    }
    while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (!this.j.equals(paramc.j))));
    return true;
  }

  public int b(c paramc)
  {
    int i1;
    if (!getClass().equals(paramc.getClass()))
      i1 = getClass().getName().compareTo(paramc.getClass().getName());
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
                                            i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramc.b()));
                                          }
                                          while (i1 != 0);
                                          if (!b())
                                            break;
                                          i1 = org.apache.thrift.c.a(this.a, paramc.a);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramc.d()));
                                      }
                                      while (i1 != 0);
                                      if (!d())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.b, paramc.b);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramc.f()));
                                  }
                                  while (i1 != 0);
                                  if (!f())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.c, paramc.c);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(paramc.h()));
                              }
                              while (i1 != 0);
                              if (!h())
                                break;
                              i1 = org.apache.thrift.c.a(this.d, paramc.d);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(paramc.j()));
                          }
                          while (i1 != 0);
                          if (!j())
                            break;
                          i1 = org.apache.thrift.c.a(this.e, paramc.e);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(paramc.l()));
                      }
                      while (i1 != 0);
                      if (!l())
                        break;
                      i1 = org.apache.thrift.c.a(this.f, paramc.f);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(paramc.m()));
                  }
                  while (i1 != 0);
                  if (!m())
                    break;
                  i1 = org.apache.thrift.c.a(this.g, paramc.g);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(paramc.o()));
              }
              while (i1 != 0);
              if (!o())
                break;
              i1 = org.apache.thrift.c.a(this.h, paramc.h);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(paramc.q()));
          }
          while (i1 != 0);
          if (!q())
            break;
          i1 = org.apache.thrift.c.a(this.i, paramc.i);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(s()).compareTo(Boolean.valueOf(paramc.s()));
      }
      while (i1 != 0);
      if (!s())
        break;
      i1 = org.apache.thrift.c.a(this.j, paramc.j);
    }
    while (i1 != 0);
    return 0;
  }

  public void b(f paramf)
  {
    t();
    paramf.a();
    if (this.a != null)
    {
      paramf.a(m);
      paramf.a(this.a);
    }
    paramf.a(n);
    paramf.a(this.b);
    if ((this.c != null) && (f()))
    {
      paramf.a(o);
      paramf.a(this.c);
    }
    if ((this.d != null) && (h()))
    {
      paramf.a(p);
      paramf.a(this.d);
    }
    if ((this.e != null) && (j()))
    {
      paramf.a(q);
      paramf.a(this.e);
    }
    if (l())
    {
      paramf.a(r);
      paramf.a(this.f);
    }
    if ((this.g != null) && (m()))
    {
      paramf.a(s);
      paramf.a(this.g);
    }
    if (o())
    {
      paramf.a(t);
      paramf.a(this.h);
    }
    if (q())
    {
      paramf.a(u);
      paramf.a(this.i);
    }
    if ((this.j != null) && (s()))
    {
      paramf.a(v);
      paramf.a(new org.apache.thrift.protocol.e(11, 11, this.j.size()));
      Iterator localIterator = this.j.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramf.a((String)localEntry.getKey());
        paramf.a((String)localEntry.getValue());
      }
    }
    paramf.c();
    paramf.b();
  }

  public void b(boolean paramBoolean)
  {
    this.w.set(1, paramBoolean);
  }

  public boolean b()
  {
    return this.a != null;
  }

  public long c()
  {
    return this.b;
  }

  public void c(boolean paramBoolean)
  {
    this.w.set(2, paramBoolean);
  }

  public void d(boolean paramBoolean)
  {
    this.w.set(3, paramBoolean);
  }

  public boolean d()
  {
    return this.w.get(0);
  }

  public String e()
  {
    return this.c;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof c));
    return a((c)paramObject);
  }

  public boolean f()
  {
    return this.c != null;
  }

  public String g()
  {
    return this.d;
  }

  public boolean h()
  {
    return this.d != null;
  }

  public int hashCode()
  {
    return 0;
  }

  public String i()
  {
    return this.e;
  }

  public boolean j()
  {
    return this.e != null;
  }

  public int k()
  {
    return this.f;
  }

  public boolean l()
  {
    return this.w.get(1);
  }

  public boolean m()
  {
    return this.g != null;
  }

  public int n()
  {
    return this.h;
  }

  public boolean o()
  {
    return this.w.get(2);
  }

  public int p()
  {
    return this.i;
  }

  public boolean q()
  {
    return this.w.get(3);
  }

  public Map<String, String> r()
  {
    return this.j;
  }

  public boolean s()
  {
    return this.j != null;
  }

  public void t()
  {
    if (this.a == null)
      throw new g("Required field 'id' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PushMetaInfo(");
    localStringBuilder.append("id:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("messageTs:");
      localStringBuilder.append(this.b);
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("topic:");
        if (this.c != null)
          break label370;
        localStringBuilder.append("null");
      }
      label97: if (h())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("title:");
        if (this.d != null)
          break label382;
        localStringBuilder.append("null");
      }
      label135: if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("description:");
        if (this.e != null)
          break label394;
        localStringBuilder.append("null");
      }
      label173: if (l())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("notifyType:");
        localStringBuilder.append(this.f);
      }
      if (m())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("url:");
        if (this.g != null)
          break label406;
        localStringBuilder.append("null");
      }
      label243: if (o())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("passThrough:");
        localStringBuilder.append(this.h);
      }
      if (q())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("notifyId:");
        localStringBuilder.append(this.i);
      }
      if (s())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("extra:");
        if (this.j != null)
          break label418;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label370: localStringBuilder.append(this.c);
      break label97;
      label382: localStringBuilder.append(this.d);
      break label135;
      label394: localStringBuilder.append(this.e);
      break label173;
      label406: localStringBuilder.append(this.g);
      break label243;
      label418: localStringBuilder.append(this.j);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.c
 * JD-Core Version:    0.6.0
 */