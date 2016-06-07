package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class t
  implements Serializable, Cloneable, org.apache.thrift.b<t, t.a>
{
  public static final Map<t.a, org.apache.thrift.meta_data.b> k;
  private static final k l = new k("XmPushActionUnSubscriptionResult");
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("request", 12, 5);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("errorCode", 10, 6);
  private static final org.apache.thrift.protocol.c s = new org.apache.thrift.protocol.c("reason", 11, 7);
  private static final org.apache.thrift.protocol.c t = new org.apache.thrift.protocol.c("topic", 11, 8);
  private static final org.apache.thrift.protocol.c u = new org.apache.thrift.protocol.c("packageName", 11, 9);
  private static final org.apache.thrift.protocol.c v = new org.apache.thrift.protocol.c("category", 11, 10);
  public String a;
  public d b;
  public String c;
  public String d;
  public s e;
  public long f;
  public String g;
  public String h;
  public String i;
  public String j;
  private BitSet w = new BitSet(1);

  static
  {
    EnumMap localEnumMap = new EnumMap(t.a.class);
    localEnumMap.put(t.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(t.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(t.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(t.a.d, new org.apache.thrift.meta_data.b("appId", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(t.a.e, new org.apache.thrift.meta_data.b("request", 2, new org.apache.thrift.meta_data.g(12, s.class)));
    localEnumMap.put(t.a.f, new org.apache.thrift.meta_data.b("errorCode", 2, new org.apache.thrift.meta_data.c(10)));
    localEnumMap.put(t.a.g, new org.apache.thrift.meta_data.b("reason", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(t.a.h, new org.apache.thrift.meta_data.b("topic", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(t.a.i, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(t.a.j, new org.apache.thrift.meta_data.b("category", 2, new org.apache.thrift.meta_data.c(11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(t.class, k);
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
          this.e = new s();
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

  public void a(boolean paramBoolean)
  {
    this.w.set(0, paramBoolean);
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(t paramt)
  {
    if (paramt == null);
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
                        bool2 = paramt.a();
                      }
                      while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramt.a))));
                      bool3 = b();
                      bool4 = paramt.b();
                    }
                    while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paramt.b))));
                    bool5 = c();
                    bool6 = paramt.c();
                  }
                  while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paramt.c))));
                  bool7 = d();
                  bool8 = paramt.d();
                }
                while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paramt.d))));
                bool9 = e();
                bool10 = paramt.e();
              }
              while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.a(paramt.e))));
              bool11 = f();
              bool12 = paramt.f();
            }
            while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (this.f != paramt.f)));
            bool13 = g();
            bool14 = paramt.g();
          }
          while (((bool13) || (bool14)) && ((!bool13) || (!bool14) || (!this.g.equals(paramt.g))));
          bool15 = i();
          bool16 = paramt.i();
        }
        while (((bool15) || (bool16)) && ((!bool15) || (!bool16) || (!this.h.equals(paramt.h))));
        bool17 = j();
        bool18 = paramt.j();
      }
      while (((bool17) || (bool18)) && ((!bool17) || (!bool18) || (!this.i.equals(paramt.i))));
      bool19 = l();
      bool20 = paramt.l();
    }
    while (((bool19) || (bool20)) && ((!bool19) || (!bool20) || (!this.j.equals(paramt.j))));
    return true;
  }

  public int b(t paramt)
  {
    int i1;
    if (!getClass().equals(paramt.getClass()))
      i1 = getClass().getName().compareTo(paramt.getClass().getName());
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
                                            i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramt.a()));
                                          }
                                          while (i1 != 0);
                                          if (!a())
                                            break;
                                          i1 = org.apache.thrift.c.a(this.a, paramt.a);
                                        }
                                        while (i1 != 0);
                                        i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramt.b()));
                                      }
                                      while (i1 != 0);
                                      if (!b())
                                        break;
                                      i1 = org.apache.thrift.c.a(this.b, paramt.b);
                                    }
                                    while (i1 != 0);
                                    i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramt.c()));
                                  }
                                  while (i1 != 0);
                                  if (!c())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.c, paramt.c);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramt.d()));
                              }
                              while (i1 != 0);
                              if (!d())
                                break;
                              i1 = org.apache.thrift.c.a(this.d, paramt.d);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramt.e()));
                          }
                          while (i1 != 0);
                          if (!e())
                            break;
                          i1 = org.apache.thrift.c.a(this.e, paramt.e);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paramt.f()));
                      }
                      while (i1 != 0);
                      if (!f())
                        break;
                      i1 = org.apache.thrift.c.a(this.f, paramt.f);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramt.g()));
                  }
                  while (i1 != 0);
                  if (!g())
                    break;
                  i1 = org.apache.thrift.c.a(this.g, paramt.g);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(paramt.i()));
              }
              while (i1 != 0);
              if (!i())
                break;
              i1 = org.apache.thrift.c.a(this.h, paramt.h);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(paramt.j()));
          }
          while (i1 != 0);
          if (!j())
            break;
          i1 = org.apache.thrift.c.a(this.i, paramt.i);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(paramt.l()));
      }
      while (i1 != 0);
      if (!l())
        break;
      i1 = org.apache.thrift.c.a(this.j, paramt.j);
    }
    while (i1 != 0);
    return 0;
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
    if ((this.d != null) && (d()))
    {
      paramf.a(p);
      paramf.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramf.a(q);
      this.e.b(paramf);
    }
    if (f())
    {
      paramf.a(r);
      paramf.a(this.f);
    }
    if ((this.g != null) && (g()))
    {
      paramf.a(s);
      paramf.a(this.g);
    }
    if ((this.h != null) && (i()))
    {
      paramf.a(t);
      paramf.a(this.h);
    }
    if ((this.i != null) && (j()))
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
    while (!(paramObject instanceof t));
    return a((t)paramObject);
  }

  public boolean f()
  {
    return this.w.get(0);
  }

  public boolean g()
  {
    return this.g != null;
  }

  public String h()
  {
    return this.h;
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

  public String k()
  {
    return this.j;
  }

  public boolean l()
  {
    return this.j != null;
  }

  public void m()
  {
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionUnSubscriptionResult(");
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
        break label507;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label409;
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
            break label435;
          localStringBuilder.append("null");
        }
        label162: if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("request:");
          if (this.e != null)
            break label447;
          localStringBuilder.append("null");
        }
        label200: if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("errorCode:");
          localStringBuilder.append(this.f);
        }
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("reason:");
          if (this.g != null)
            break label459;
          localStringBuilder.append("null");
        }
        label270: if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("topic:");
          if (this.h != null)
            break label471;
          localStringBuilder.append("null");
        }
        label308: if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.i != null)
            break label483;
          localStringBuilder.append("null");
        }
        label346: if (l())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.j != null)
            break label495;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label409: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label435: localStringBuilder.append(this.d);
        break label162;
        label447: localStringBuilder.append(this.e);
        break label200;
        label459: localStringBuilder.append(this.g);
        break label270;
        label471: localStringBuilder.append(this.h);
        break label308;
        label483: localStringBuilder.append(this.i);
        break label346;
        label495: localStringBuilder.append(this.j);
      }
      label507: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.t
 * JD-Core Version:    0.6.0
 */