package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class j
  implements Serializable, Cloneable, org.apache.thrift.b<j, j.a>
{
  public static final Map<j.a, org.apache.thrift.meta_data.b> k;
  private static final k l = new k("XmPushActionRegistration");
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("appVersion", 11, 5);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("packageName", 11, 6);
  private static final org.apache.thrift.protocol.c s = new org.apache.thrift.protocol.c("token", 11, 7);
  private static final org.apache.thrift.protocol.c t = new org.apache.thrift.protocol.c("deviceId", 11, 8);
  private static final org.apache.thrift.protocol.c u = new org.apache.thrift.protocol.c("aliasName", 11, 9);
  private static final org.apache.thrift.protocol.c v = new org.apache.thrift.protocol.c("sdkVersion", 11, 10);
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
    EnumMap localEnumMap = new EnumMap(j.a.class);
    localEnumMap.put(j.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(j.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(j.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(j.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(j.a.e, new org.apache.thrift.meta_data.b("appVersion", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(j.a.f, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(j.a.g, new org.apache.thrift.meta_data.b("token", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(j.a.h, new org.apache.thrift.meta_data.b("deviceId", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(j.a.i, new org.apache.thrift.meta_data.b("aliasName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(j.a.j, new org.apache.thrift.meta_data.b("sdkVersion", 2, new org.apache.thrift.meta_data.c(11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(j.class, k);
  }

  public j a(String paramString)
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
    m();
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(j paramj)
  {
    if (paramj == null);
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
                        bool2 = paramj.a();
                      }
                      while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramj.a))));
                      bool3 = b();
                      bool4 = paramj.b();
                    }
                    while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paramj.b))));
                    bool5 = c();
                    bool6 = paramj.c();
                  }
                  while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramj.c))));
                  bool7 = e();
                  bool8 = paramj.e();
                }
                while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramj.d))));
                bool9 = f();
                bool10 = paramj.f();
              }
              while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.equals(paramj.e))));
              bool11 = g();
              bool12 = paramj.g();
            }
            while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.f.equals(paramj.f))));
            bool13 = i();
            bool14 = paramj.i();
          }
          while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.g.equals(paramj.g))));
          bool15 = j();
          bool16 = paramj.j();
        }
        while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.h.equals(paramj.h))));
        bool17 = k();
        bool18 = paramj.k();
      }
      while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (!this.i.equals(paramj.i))));
      bool19 = l();
      bool20 = paramj.l();
    }
    while (((bool19) || (bool20)) && ((!bool19) || (!bool20) || (!this.j.equals(paramj.j))));
    return true;
  }

  public int b(j paramj)
  {
    int i1;
    if (!getClass().equals(paramj.getClass()))
      i1 = getClass().getName().compareTo(paramj.getClass().getName());
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
                                            i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramj.a()));
                                          }
                                          while (i1 != 0);
                                          if (!a())
                                            break;
                                          i1 = org.apache.thrift.c.a(this.a, paramj.a);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramj.b()));
                                      }
                                      while (i1 != 0);
                                      if (!b())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.b, paramj.b);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramj.c()));
                                  }
                                  while (i1 != 0);
                                  if (!c())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.c, paramj.c);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramj.e()));
                              }
                              while (i1 != 0);
                              if (!e())
                                break;
                              i1 = org.apache.thrift.c.a(this.d, paramj.d);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramj.f()));
                          }
                          while (i1 != 0);
                          if (!f())
                            break;
                          i1 = org.apache.thrift.c.a(this.e, paramj.e);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramj.g()));
                      }
                      while (i1 != 0);
                      if (!g())
                        break;
                      i1 = org.apache.thrift.c.a(this.f, paramj.f);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(paramj.i()));
                  }
                  while (i1 != 0);
                  if (!i())
                    break;
                  i1 = org.apache.thrift.c.a(this.g, paramj.g);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(paramj.j()));
              }
              while (i1 != 0);
              if (!j())
                break;
              i1 = org.apache.thrift.c.a(this.h, paramj.h);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(paramj.k()));
          }
          while (i1 != 0);
          if (!k())
            break;
          i1 = org.apache.thrift.c.a(this.i, paramj.i);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(paramj.l()));
      }
      while (i1 != 0);
      if (!l())
        break;
      i1 = org.apache.thrift.c.a(this.j, paramj.j);
    }
    while (i1 != 0);
    return 0;
  }

  public j b(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public void b(f paramf)
  {
    m();
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
    if ((this.e != null) && (f()))
    {
      paramf.a(q);
      paramf.a(this.e);
    }
    if ((this.f != null) && (g()))
    {
      paramf.a(r);
      paramf.a(this.f);
    }
    if (this.g != null)
    {
      paramf.a(s);
      paramf.a(this.g);
    }
    if ((this.h != null) && (j()))
    {
      paramf.a(t);
      paramf.a(this.h);
    }
    if ((this.i != null) && (k()))
    {
      paramf.a(u);
      paramf.a(this.i);
    }
    if ((this.j != null) && (l()))
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

  public j c(String paramString)
  {
    this.e = paramString;
    return this;
  }

  public boolean c()
  {
    return this.c != null;
  }

  public j d(String paramString)
  {
    this.f = paramString;
    return this;
  }

  public String d()
  {
    return this.d;
  }

  public j e(String paramString)
  {
    this.g = paramString;
    return this;
  }

  public boolean e()
  {
    return this.d != null;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof j));
    return a((j)paramObject);
  }

  public boolean f()
  {
    return this.e != null;
  }

  public boolean g()
  {
    return this.f != null;
  }

  public String h()
  {
    return this.g;
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean i()
  {
    return this.g != null;
  }

  public boolean j()
  {
    return this.h != null;
  }

  public boolean k()
  {
    return this.i != null;
  }

  public boolean l()
  {
    return this.j != null;
  }

  public void m()
  {
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'appId' was not present! Struct: " + toString());
    if (this.g == null)
      throw new org.apache.thrift.protocol.g("Required field 'token' was not present! Struct: " + toString());
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionRegistration(");
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
        break label511;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label401;
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
          break label427;
        localStringBuilder.append("null");
        label155: if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("appVersion:");
          if (this.e != null)
            break label439;
          localStringBuilder.append("null");
        }
        label193: if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.f != null)
            break label451;
          localStringBuilder.append("null");
        }
        label231: localStringBuilder.append(", ");
        localStringBuilder.append("token:");
        if (this.g != null)
          break label463;
        localStringBuilder.append("null");
        label262: if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("deviceId:");
          if (this.h != null)
            break label475;
          localStringBuilder.append("null");
        }
        label300: if (k())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("aliasName:");
          if (this.i != null)
            break label487;
          localStringBuilder.append("null");
        }
        label338: if (l())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("sdkVersion:");
          if (this.j != null)
            break label499;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label401: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label427: localStringBuilder.append(this.d);
        break label155;
        label439: localStringBuilder.append(this.e);
        break label193;
        label451: localStringBuilder.append(this.f);
        break label231;
        label463: localStringBuilder.append(this.g);
        break label262;
        label475: localStringBuilder.append(this.h);
        break label300;
        label487: localStringBuilder.append(this.i);
        break label338;
        label499: localStringBuilder.append(this.j);
      }
      label511: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.j
 * JD-Core Version:    0.6.0
 */