package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class h
  implements Serializable, Cloneable, org.apache.thrift.b<h, h.a>
{
  public static final Map<h.a, org.apache.thrift.meta_data.b> i;
  private static final k j = new k("XmPushActionContainer");
  private static final org.apache.thrift.protocol.c k = new org.apache.thrift.protocol.c("action", 8, 1);
  private static final org.apache.thrift.protocol.c l = new org.apache.thrift.protocol.c("encryptAction", 2, 2);
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("isRequest", 2, 3);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("pushAction", 11, 4);
  private static final org.apache.thrift.protocol.c o = new org.apache.thrift.protocol.c("appid", 11, 5);
  private static final org.apache.thrift.protocol.c p = new org.apache.thrift.protocol.c("packageName", 11, 6);
  private static final org.apache.thrift.protocol.c q = new org.apache.thrift.protocol.c("target", 12, 7);
  private static final org.apache.thrift.protocol.c r = new org.apache.thrift.protocol.c("metaInfo", 12, 8);
  public a a;
  public boolean b = true;
  public boolean c = true;
  public ByteBuffer d;
  public String e;
  public String f;
  public d g;
  public c h;
  private BitSet s = new BitSet(2);

  static
  {
    EnumMap localEnumMap = new EnumMap(h.a.class);
    localEnumMap.put(h.a.a, new org.apache.thrift.meta_data.b("action", 1, new org.apache.thrift.meta_data.a(16, a.class)));
    localEnumMap.put(h.a.b, new org.apache.thrift.meta_data.b("encryptAction", 1, new org.apache.thrift.meta_data.c(2)));
    localEnumMap.put(h.a.c, new org.apache.thrift.meta_data.b("isRequest", 1, new org.apache.thrift.meta_data.c(2)));
    localEnumMap.put(h.a.d, new org.apache.thrift.meta_data.b("pushAction", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(h.a.e, new org.apache.thrift.meta_data.b("appid", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(h.a.f, new org.apache.thrift.meta_data.b("packageName", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(h.a.g, new org.apache.thrift.meta_data.b("target", 1, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(h.a.h, new org.apache.thrift.meta_data.b("metaInfo", 2, new org.apache.thrift.meta_data.g(12, c.class)));
    i = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(h.class, i);
  }

  public a a()
  {
    return this.a;
  }

  public h a(a parama)
  {
    this.a = parama;
    return this;
  }

  public h a(c paramc)
  {
    this.h = paramc;
    return this;
  }

  public h a(d paramd)
  {
    this.g = paramd;
    return this;
  }

  public h a(String paramString)
  {
    this.e = paramString;
    return this;
  }

  public h a(ByteBuffer paramByteBuffer)
  {
    this.d = paramByteBuffer;
    return this;
  }

  public h a(boolean paramBoolean)
  {
    this.b = paramBoolean;
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
        i.a(paramf, localc.a);
        break;
      case 1:
        if (localc.a == 8)
        {
          this.a = a.a(paramf.m());
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 2:
        if (localc.a == 2)
        {
          this.b = paramf.j();
          b(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 3:
        if (localc.a == 2)
        {
          this.c = paramf.j();
          d(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 4:
        if (localc.a == 11)
        {
          this.d = paramf.q();
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
        if (localc.a == 12)
        {
          this.g = new d();
          this.g.a(paramf);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 8:
        if (localc.a == 12)
        {
          this.h = new c();
          this.h.a(paramf);
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    if (!d())
      throw new org.apache.thrift.protocol.g("Required field 'encryptAction' was not found in serialized data! Struct: " + toString());
    if (!e())
      throw new org.apache.thrift.protocol.g("Required field 'isRequest' was not found in serialized data! Struct: " + toString());
    o();
  }

  public boolean a(h paramh)
  {
    if (paramh == null);
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
                bool2 = paramh.b();
              }
              while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramh.a)) || (this.b != paramh.b) || (this.c != paramh.c)));
              bool3 = g();
              bool4 = paramh.g();
            }
            while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.d.equals(paramh.d))));
            bool5 = i();
            bool6 = paramh.i();
          }
          while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.e.equals(paramh.e))));
          bool7 = k();
          bool8 = paramh.k();
        }
        while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.f.equals(paramh.f))));
        bool9 = l();
        bool10 = paramh.l();
      }
      while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.g.a(paramh.g))));
      bool11 = n();
      bool12 = paramh.n();
    }
    while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.h.a(paramh.h))));
    return true;
  }

  public int b(h paramh)
  {
    int i1;
    if (!getClass().equals(paramh.getClass()))
      i1 = getClass().getName().compareTo(paramh.getClass().getName());
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
                                    i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramh.b()));
                                  }
                                  while (i1 != 0);
                                  if (!b())
                                    break;
                                  i1 = org.apache.thrift.c.a(this.a, paramh.a);
                                }
                                while (i1 != 0);
                                i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramh.d()));
                              }
                              while (i1 != 0);
                              if (!d())
                                break;
                              i1 = org.apache.thrift.c.a(this.b, paramh.b);
                            }
                            while (i1 != 0);
                            i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramh.e()));
                          }
                          while (i1 != 0);
                          if (!e())
                            break;
                          i1 = org.apache.thrift.c.a(this.c, paramh.c);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(paramh.g()));
                      }
                      while (i1 != 0);
                      if (!g())
                        break;
                      i1 = org.apache.thrift.c.a(this.d, paramh.d);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(paramh.i()));
                  }
                  while (i1 != 0);
                  if (!i())
                    break;
                  i1 = org.apache.thrift.c.a(this.e, paramh.e);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(paramh.k()));
              }
              while (i1 != 0);
              if (!k())
                break;
              i1 = org.apache.thrift.c.a(this.f, paramh.f);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(paramh.l()));
          }
          while (i1 != 0);
          if (!l())
            break;
          i1 = org.apache.thrift.c.a(this.g, paramh.g);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(paramh.n()));
      }
      while (i1 != 0);
      if (!n())
        break;
      i1 = org.apache.thrift.c.a(this.h, paramh.h);
    }
    while (i1 != 0);
    return 0;
  }

  public h b(String paramString)
  {
    this.f = paramString;
    return this;
  }

  public void b(f paramf)
  {
    o();
    paramf.a();
    if (this.a != null)
    {
      paramf.a(k);
      paramf.a(this.a.a());
    }
    paramf.a(l);
    paramf.a(this.b);
    paramf.a(m);
    paramf.a(this.c);
    if (this.d != null)
    {
      paramf.a(n);
      paramf.a(this.d);
    }
    if ((this.e != null) && (i()))
    {
      paramf.a(o);
      paramf.a(this.e);
    }
    if ((this.f != null) && (k()))
    {
      paramf.a(p);
      paramf.a(this.f);
    }
    if (this.g != null)
    {
      paramf.a(q);
      this.g.b(paramf);
    }
    if ((this.h != null) && (n()))
    {
      paramf.a(r);
      this.h.b(paramf);
    }
    paramf.c();
    paramf.b();
  }

  public void b(boolean paramBoolean)
  {
    this.s.set(0, paramBoolean);
  }

  public boolean b()
  {
    return this.a != null;
  }

  public h c(boolean paramBoolean)
  {
    this.c = paramBoolean;
    d(true);
    return this;
  }

  public boolean c()
  {
    return this.b;
  }

  public void d(boolean paramBoolean)
  {
    this.s.set(1, paramBoolean);
  }

  public boolean d()
  {
    return this.s.get(0);
  }

  public boolean e()
  {
    return this.s.get(1);
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof h));
    return a((h)paramObject);
  }

  public byte[] f()
  {
    a(org.apache.thrift.c.a(this.d));
    return this.d.array();
  }

  public boolean g()
  {
    return this.d != null;
  }

  public String h()
  {
    return this.e;
  }

  public int hashCode()
  {
    return 0;
  }

  public boolean i()
  {
    return this.e != null;
  }

  public String j()
  {
    return this.f;
  }

  public boolean k()
  {
    return this.f != null;
  }

  public boolean l()
  {
    return this.g != null;
  }

  public c m()
  {
    return this.h;
  }

  public boolean n()
  {
    return this.h != null;
  }

  public void o()
  {
    if (this.a == null)
      throw new org.apache.thrift.protocol.g("Required field 'action' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'pushAction' was not present! Struct: " + toString());
    if (this.g == null)
      throw new org.apache.thrift.protocol.g("Required field 'target' was not present! Struct: " + toString());
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionContainer(");
    localStringBuilder.append("action:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("encryptAction:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("isRequest:");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", ");
      localStringBuilder.append("pushAction:");
      if (this.d != null)
        break label285;
      localStringBuilder.append("null");
      label115: if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("appid:");
        if (this.e != null)
          break label296;
        localStringBuilder.append("null");
      }
      label153: if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("packageName:");
        if (this.f != null)
          break label308;
        localStringBuilder.append("null");
      }
      label191: localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.g != null)
        break label320;
      localStringBuilder.append("null");
      label222: if (n())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("metaInfo:");
        if (this.h != null)
          break label332;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label285: org.apache.thrift.c.a(this.d, localStringBuilder);
      break label115;
      label296: localStringBuilder.append(this.e);
      break label153;
      label308: localStringBuilder.append(this.f);
      break label191;
      label320: localStringBuilder.append(this.g);
      break label222;
      label332: localStringBuilder.append(this.h);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.h
 * JD-Core Version:    0.6.0
 */