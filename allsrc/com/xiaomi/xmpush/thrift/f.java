package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class f
  implements Serializable, Cloneable, org.apache.thrift.b<f, f.a>
{
  public static final Map<f.a, org.apache.thrift.meta_data.b> i;
  private static final k j = new k("XmPushActionCommand");
  private static final org.apache.thrift.protocol.c k = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c l = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("cmdName", 11, 5);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("cmdArgs", 15, 6);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("packageName", 11, 7);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("category", 11, 9);
  public String a;
  public d b;
  public String c;
  public String d;
  public String e;
  public List<String> f;
  public String g;
  public String h;

  static
  {
    EnumMap localEnumMap = new EnumMap(f.a.class);
    localEnumMap.put(f.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(f.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(f.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(f.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(f.a.e, new org.apache.thrift.meta_data.b("cmdName", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(f.a.f, new org.apache.thrift.meta_data.b("cmdArgs", 2, new org.apache.thrift.meta_data.d(15, new org.apache.thrift.meta_data.c(11))));
    localEnumMap.put(f.a.g, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(f.a.h, new org.apache.thrift.meta_data.b("category", 2, new org.apache.thrift.meta_data.c(11)));
    i = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(f.class, i);
  }

  public f a(String paramString)
  {
    this.c = paramString;
    return this;
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
      case 8:
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
        if (localc.a == 15)
        {
          org.apache.thrift.protocol.d locald = paramf.h();
          this.f = new ArrayList(locald.b);
          for (int i1 = 0; i1 < locald.b; i1++)
          {
            String str = paramf.p();
            this.f.add(str);
          }
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
      case 9:
        if (localc.a == 11)
        {
          this.h = paramf.p();
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    i();
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(f paramf)
  {
    if (paramf == null);
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
                    bool2 = paramf.a();
                  }
                  while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramf.a))));
                  bool3 = b();
                  bool4 = paramf.b();
                }
                while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paramf.b))));
                bool5 = c();
                bool6 = paramf.c();
              }
              while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramf.c))));
              bool7 = d();
              bool8 = paramf.d();
            }
            while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramf.d))));
            bool9 = e();
            bool10 = paramf.e();
          }
          while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.equals(paramf.e))));
          bool11 = f();
          bool12 = paramf.f();
        }
        while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.f.equals(paramf.f))));
        bool13 = g();
        bool14 = paramf.g();
      }
      while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.g.equals(paramf.g))));
      bool15 = h();
      bool16 = paramf.h();
    }
    while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.h.equals(paramf.h))));
    return true;
  }

  public int b(f paramf)
  {
    int i1;
    if (!getClass().equals(paramf.getClass()))
      i1 = getClass().getName().compareTo(paramf.getClass().getName());
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
                                    i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramf.a()));
                                  }
                                  while (i1 != 0);
                                  if (!a())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.a, paramf.a);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramf.b()));
                              }
                              while (i1 != 0);
                              if (!b())
                                break;
                              i1 = org.apache.thrift.c.a(this.b, paramf.b);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramf.c()));
                          }
                          while (i1 != 0);
                          if (!c())
                            break;
                          i1 = org.apache.thrift.c.a(this.c, paramf.c);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramf.d()));
                      }
                      while (i1 != 0);
                      if (!d())
                        break;
                      i1 = org.apache.thrift.c.a(this.d, paramf.d);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramf.e()));
                  }
                  while (i1 != 0);
                  if (!e())
                    break;
                  i1 = org.apache.thrift.c.a(this.e, paramf.e);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramf.f()));
              }
              while (i1 != 0);
              if (!f())
                break;
              i1 = org.apache.thrift.c.a(this.f, paramf.f);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramf.g()));
          }
          while (i1 != 0);
          if (!g())
            break;
          i1 = org.apache.thrift.c.a(this.g, paramf.g);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(paramf.h()));
      }
      while (i1 != 0);
      if (!h())
        break;
      i1 = org.apache.thrift.c.a(this.h, paramf.h);
    }
    while (i1 != 0);
    return 0;
  }

  public f b(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public void b(org.apache.thrift.protocol.f paramf)
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
    if (this.e != null)
    {
      paramf.a(o);
      paramf.a(this.e);
    }
    if ((this.f != null) && (f()))
    {
      paramf.a(p);
      paramf.a(new org.apache.thrift.protocol.d(11, this.f.size()));
      Iterator localIterator = this.f.iterator();
      while (localIterator.hasNext())
        paramf.a((String)localIterator.next());
    }
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

  public f c(String paramString)
  {
    this.e = paramString;
    return this;
  }

  public boolean c()
  {
    return this.c != null;
  }

  public void d(String paramString)
  {
    if (this.f == null)
      this.f = new ArrayList();
    this.f.add(paramString);
  }

  public boolean d()
  {
    return this.d != null;
  }

  public f e(String paramString)
  {
    this.g = paramString;
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
    while (!(paramObject instanceof f));
    return a((f)paramObject);
  }

  public f f(String paramString)
  {
    this.h = paramString;
    return this;
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

  public void i()
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
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionCommand(");
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
        break label411;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label325;
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
          break label351;
        localStringBuilder.append("null");
        label155: localStringBuilder.append(", ");
        localStringBuilder.append("cmdName:");
        if (this.e != null)
          break label363;
        localStringBuilder.append("null");
        label186: if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("cmdArgs:");
          if (this.f != null)
            break label375;
          localStringBuilder.append("null");
        }
        label224: if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.g != null)
            break label387;
          localStringBuilder.append("null");
        }
        label262: if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.h != null)
            break label399;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label325: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label351: localStringBuilder.append(this.d);
        break label155;
        label363: localStringBuilder.append(this.e);
        break label186;
        label375: localStringBuilder.append(this.f);
        break label224;
        label387: localStringBuilder.append(this.g);
        break label262;
        label399: localStringBuilder.append(this.h);
      }
      label411: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.f
 * JD-Core Version:    0.6.0
 */