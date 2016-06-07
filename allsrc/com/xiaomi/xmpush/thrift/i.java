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
import org.apache.thrift.protocol.k;

public class i
  implements Serializable, Cloneable, org.apache.thrift.b<i, i.a>
{
  public static final Map<i.a, org.apache.thrift.meta_data.b> k;
  private static final k l = new k("XmPushActionNotification");
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("type", 11, 5);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("requireAck", 2, 6);
  private static final org.apache.thrift.protocol.c s = new org.apache.thrift.protocol.c("payload", 11, 7);
  private static final org.apache.thrift.protocol.c t = new org.apache.thrift.protocol.c("extra", 13, 8);
  private static final org.apache.thrift.protocol.c u = new org.apache.thrift.protocol.c("packageName", 11, 9);
  private static final org.apache.thrift.protocol.c v = new org.apache.thrift.protocol.c("category", 11, 10);
  public String a;
  public d b;
  public String c;
  public String d;
  public String e;
  public boolean f = true;
  public String g;
  public Map<String, String> h;
  public String i;
  public String j;
  private BitSet w = new BitSet(1);

  static
  {
    EnumMap localEnumMap = new EnumMap(i.a.class);
    localEnumMap.put(i.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(i.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(i.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(i.a.d, new org.apache.thrift.meta_data.b("appId", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(i.a.e, new org.apache.thrift.meta_data.b("type", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(i.a.f, new org.apache.thrift.meta_data.b("requireAck", 1, new org.apache.thrift.meta_data.c(2)));
    localEnumMap.put(i.a.g, new org.apache.thrift.meta_data.b("payload", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(i.a.h, new org.apache.thrift.meta_data.b("extra", 2, new org.apache.thrift.meta_data.e(13, new org.apache.thrift.meta_data.c(11), new org.apache.thrift.meta_data.c(11))));
    localEnumMap.put(i.a.i, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(i.a.j, new org.apache.thrift.meta_data.b("category", 2, new org.apache.thrift.meta_data.c(11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(i.class, k);
  }

  public i a(String paramString)
  {
    this.c = paramString;
    return this;
  }

  public i a(boolean paramBoolean)
  {
    this.f = paramBoolean;
    b(true);
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
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 1:
        if (localc.a == 11)
        {
          this.a = paramf.p();
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 2:
        if (localc.a == 12)
        {
          this.b = new d();
          this.b.a(paramf);
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 3:
        if (localc.a == 11)
        {
          this.c = paramf.p();
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 4:
        if (localc.a == 11)
        {
          this.d = paramf.p();
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 5:
        if (localc.a == 11)
        {
          this.e = paramf.p();
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 6:
        if (localc.a == 2)
        {
          this.f = paramf.j();
          b(true);
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 7:
        if (localc.a == 11)
        {
          this.g = paramf.p();
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 8:
        if (localc.a == 13)
        {
          org.apache.thrift.protocol.e locale = paramf.g();
          this.h = new HashMap(2 * locale.c);
          for (int i1 = 0; i1 < locale.c; i1++)
          {
            String str1 = paramf.p();
            String str2 = paramf.p();
            this.h.put(str1, str2);
          }
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 9:
        if (localc.a == 11)
        {
          this.i = paramf.p();
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
        break;
      case 10:
        if (localc.a == 11)
        {
          this.j = paramf.p();
          continue;
        }
        org.apache.thrift.protocol.i.a(paramf, localc.a);
      }
    }
    paramf.e();
    if (!f())
      throw new org.apache.thrift.protocol.g("Required field 'requireAck' was not found in serialized data! Struct: " + toString());
    k();
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(i parami)
  {
    if (parami == null);
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
                      bool2 = parami.a();
                    }
                    while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(parami.a))));
                    bool3 = b();
                    bool4 = parami.b();
                  }
                  while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(parami.b))));
                  bool5 = c();
                  bool6 = parami.c();
                }
                while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(parami.c))));
                bool7 = d();
                bool8 = parami.d();
              }
              while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(parami.d))));
              bool9 = e();
              bool10 = parami.e();
            }
            while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.equals(parami.e)) || (this.f != parami.f)));
            bool11 = g();
            bool12 = parami.g();
          }
          while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.g.equals(parami.g))));
          bool13 = h();
          bool14 = parami.h();
        }
        while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.h.equals(parami.h))));
        bool15 = i();
        bool16 = parami.i();
      }
      while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.i.equals(parami.i))));
      bool17 = j();
      bool18 = parami.j();
    }
    while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (!this.j.equals(parami.j))));
    return true;
  }

  public int b(i parami)
  {
    int i1;
    if (!getClass().equals(parami.getClass()))
      i1 = getClass().getName().compareTo(parami.getClass().getName());
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
                                            i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(parami.a()));
                                          }
                                          while (i1 != 0);
                                          if (!a())
                                            break;
                                          i1 = org.apache.thrift.c.a(this.a, parami.a);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(parami.b()));
                                      }
                                      while (i1 != 0);
                                      if (!b())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.b, parami.b);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(parami.c()));
                                  }
                                  while (i1 != 0);
                                  if (!c())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.c, parami.c);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(parami.d()));
                              }
                              while (i1 != 0);
                              if (!d())
                                break;
                              i1 = org.apache.thrift.c.a(this.d, parami.d);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(parami.e()));
                          }
                          while (i1 != 0);
                          if (!e())
                            break;
                          i1 = org.apache.thrift.c.a(this.e, parami.e);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(parami.f()));
                      }
                      while (i1 != 0);
                      if (!f())
                        break;
                      i1 = org.apache.thrift.c.a(this.f, parami.f);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(parami.g()));
                  }
                  while (i1 != 0);
                  if (!g())
                    break;
                  i1 = org.apache.thrift.c.a(this.g, parami.g);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(parami.h()));
              }
              while (i1 != 0);
              if (!h())
                break;
              i1 = org.apache.thrift.c.a(this.h, parami.h);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(parami.i()));
          }
          while (i1 != 0);
          if (!i())
            break;
          i1 = org.apache.thrift.c.a(this.i, parami.i);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(parami.j()));
      }
      while (i1 != 0);
      if (!j())
        break;
      i1 = org.apache.thrift.c.a(this.j, parami.j);
    }
    while (i1 != 0);
    return 0;
  }

  public i b(String paramString)
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
    if ((this.d != null) && (d()))
    {
      paramf.a(p);
      paramf.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramf.a(q);
      paramf.a(this.e);
    }
    paramf.a(r);
    paramf.a(this.f);
    if ((this.g != null) && (g()))
    {
      paramf.a(s);
      paramf.a(this.g);
    }
    if ((this.h != null) && (h()))
    {
      paramf.a(t);
      paramf.a(new org.apache.thrift.protocol.e(11, 11, this.h.size()));
      Iterator localIterator = this.h.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramf.a((String)localEntry.getKey());
        paramf.a((String)localEntry.getValue());
      }
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

  public void b(boolean paramBoolean)
  {
    this.w.set(0, paramBoolean);
  }

  public boolean b()
  {
    return this.b != null;
  }

  public i c(String paramString)
  {
    this.e = paramString;
    return this;
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
    while (!(paramObject instanceof i));
    return a((i)paramObject);
  }

  public boolean f()
  {
    return this.w.get(0);
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
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionNotification(");
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
        break label500;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label402;
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
        label124: if (d())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("appId:");
          if (this.d != null)
            break label428;
          localStringBuilder.append("null");
        }
        label162: if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("type:");
          if (this.e != null)
            break label440;
          localStringBuilder.append("null");
        }
        label200: localStringBuilder.append(", ");
        localStringBuilder.append("requireAck:");
        localStringBuilder.append(this.f);
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("payload:");
          if (this.g != null)
            break label452;
          localStringBuilder.append("null");
        }
        label263: if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("extra:");
          if (this.h != null)
            break label464;
          localStringBuilder.append("null");
        }
        label301: if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.i != null)
            break label476;
          localStringBuilder.append("null");
        }
        label339: if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.j != null)
            break label488;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label402: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label428: localStringBuilder.append(this.d);
        break label162;
        label440: localStringBuilder.append(this.e);
        break label200;
        label452: localStringBuilder.append(this.g);
        break label263;
        label464: localStringBuilder.append(this.h);
        break label301;
        label476: localStringBuilder.append(this.i);
        break label339;
        label488: localStringBuilder.append(this.j);
      }
      label500: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.i
 * JD-Core Version:    0.6.0
 */