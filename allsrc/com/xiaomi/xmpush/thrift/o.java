package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class o
  implements Serializable, Cloneable, org.apache.thrift.b<o, o.a>
{
  public static final Map<o.a, org.apache.thrift.meta_data.b> h;
  private static final k i = new k("XmPushActionSubscription");
  private static final org.apache.thrift.protocol.c j = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c k = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c l = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("topic", 11, 5);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("packageName", 11, 6);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("category", 11, 7);
  public String a;
  public d b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;

  static
  {
    EnumMap localEnumMap = new EnumMap(o.a.class);
    localEnumMap.put(o.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(o.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(o.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(o.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(o.a.e, new org.apache.thrift.meta_data.b("topic", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(o.a.f, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(o.a.g, new org.apache.thrift.meta_data.b("category", 2, new org.apache.thrift.meta_data.c(11)));
    h = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(o.class, h);
  }

  public o a(String paramString)
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
      }
    }
    paramf.e();
    h();
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(o paramo)
  {
    if (paramo == null);
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
                  bool2 = paramo.a();
                }
                while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramo.a))));
                bool3 = b();
                bool4 = paramo.b();
              }
              while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paramo.b))));
              bool5 = c();
              bool6 = paramo.c();
            }
            while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramo.c))));
            bool7 = d();
            bool8 = paramo.d();
          }
          while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramo.d))));
          bool9 = e();
          bool10 = paramo.e();
        }
        while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.equals(paramo.e))));
        bool11 = f();
        bool12 = paramo.f();
      }
      while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.f.equals(paramo.f))));
      bool13 = g();
      bool14 = paramo.g();
    }
    while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.g.equals(paramo.g))));
    return true;
  }

  public int b(o paramo)
  {
    int i1;
    if (!getClass().equals(paramo.getClass()))
      i1 = getClass().getName().compareTo(paramo.getClass().getName());
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
                                i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramo.a()));
                              }
                              while (i1 != 0);
                              if (!a())
                                break;
                              i1 = org.apache.thrift.c.a(this.a, paramo.a);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramo.b()));
                          }
                          while (i1 != 0);
                          if (!b())
                            break;
                          i1 = org.apache.thrift.c.a(this.b, paramo.b);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramo.c()));
                      }
                      while (i1 != 0);
                      if (!c())
                        break;
                      i1 = org.apache.thrift.c.a(this.c, paramo.c);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramo.d()));
                  }
                  while (i1 != 0);
                  if (!d())
                    break;
                  i1 = org.apache.thrift.c.a(this.d, paramo.d);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramo.e()));
              }
              while (i1 != 0);
              if (!e())
                break;
              i1 = org.apache.thrift.c.a(this.e, paramo.e);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramo.f()));
          }
          while (i1 != 0);
          if (!f())
            break;
          i1 = org.apache.thrift.c.a(this.f, paramo.f);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramo.g()));
      }
      while (i1 != 0);
      if (!g())
        break;
      i1 = org.apache.thrift.c.a(this.g, paramo.g);
    }
    while (i1 != 0);
    return 0;
  }

  public o b(String paramString)
  {
    this.d = paramString;
    return this;
  }

  public void b(f paramf)
  {
    h();
    paramf.a();
    if ((this.a != null) && (a()))
    {
      paramf.a(j);
      paramf.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramf.a(k);
      this.b.b(paramf);
    }
    if (this.c != null)
    {
      paramf.a(l);
      paramf.a(this.c);
    }
    if (this.d != null)
    {
      paramf.a(m);
      paramf.a(this.d);
    }
    if (this.e != null)
    {
      paramf.a(n);
      paramf.a(this.e);
    }
    if ((this.f != null) && (f()))
    {
      paramf.a(o);
      paramf.a(this.f);
    }
    if ((this.g != null) && (g()))
    {
      paramf.a(p);
      paramf.a(this.g);
    }
    paramf.c();
    paramf.b();
  }

  public boolean b()
  {
    return this.b != null;
  }

  public o c(String paramString)
  {
    this.e = paramString;
    return this;
  }

  public boolean c()
  {
    return this.c != null;
  }

  public o d(String paramString)
  {
    this.f = paramString;
    return this;
  }

  public boolean d()
  {
    return this.d != null;
  }

  public o e(String paramString)
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
    while (!(paramObject instanceof o));
    return a((o)paramObject);
  }

  public boolean f()
  {
    return this.f != null;
  }

  public boolean g()
  {
    return this.g != null;
  }

  public void h()
  {
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'appId' was not present! Struct: " + toString());
    if (this.e == null)
      throw new org.apache.thrift.protocol.g("Required field 'topic' was not present! Struct: " + toString());
  }

  public int hashCode()
  {
    return 0;
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionSubscription(");
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
        break label361;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label287;
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
          break label313;
        localStringBuilder.append("null");
        label155: localStringBuilder.append(", ");
        localStringBuilder.append("topic:");
        if (this.e != null)
          break label325;
        localStringBuilder.append("null");
        label186: if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.f != null)
            break label337;
          localStringBuilder.append("null");
        }
        label224: if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.g != null)
            break label349;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label287: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label313: localStringBuilder.append(this.d);
        break label155;
        label325: localStringBuilder.append(this.e);
        break label186;
        label337: localStringBuilder.append(this.f);
        break label224;
        label349: localStringBuilder.append(this.g);
      }
      label361: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.o
 * JD-Core Version:    0.6.0
 */