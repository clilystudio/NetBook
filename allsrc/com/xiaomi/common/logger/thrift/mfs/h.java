package com.xiaomi.common.logger.thrift.mfs;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.g;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class h
  implements Serializable, Cloneable, org.apache.thrift.b<h, h.a>
{
  public static final Map<h.a, org.apache.thrift.meta_data.b> a;
  private static final k b = new k("PassportLandNodeInfo");
  private static final org.apache.thrift.protocol.c c = new org.apache.thrift.protocol.c("ip", 8, 1);
  private static final org.apache.thrift.protocol.c d = new org.apache.thrift.protocol.c("eid", 8, 2);
  private static final org.apache.thrift.protocol.c e = new org.apache.thrift.protocol.c("rt", 8, 3);
  private int f;
  private int g;
  private int h;
  private BitSet i = new BitSet(3);

  static
  {
    EnumMap localEnumMap = new EnumMap(h.a.class);
    localEnumMap.put(h.a.a, new org.apache.thrift.meta_data.b("ip", 1, new org.apache.thrift.meta_data.c(8)));
    localEnumMap.put(h.a.b, new org.apache.thrift.meta_data.b("eid", 1, new org.apache.thrift.meta_data.c(8)));
    localEnumMap.put(h.a.c, new org.apache.thrift.meta_data.b("rt", 1, new org.apache.thrift.meta_data.c(8)));
    a = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(h.class, a);
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
          this.f = paramf.m();
          a(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 2:
        if (localc.a == 8)
        {
          this.g = paramf.m();
          b(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 3:
        if (localc.a == 8)
        {
          this.h = paramf.m();
          c(true);
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    if (!a())
      throw new g("Required field 'ip' was not found in serialized data! Struct: " + toString());
    if (!b())
      throw new g("Required field 'eid' was not found in serialized data! Struct: " + toString());
    if (!c())
      throw new g("Required field 'rt' was not found in serialized data! Struct: " + toString());
    d();
  }

  public void a(boolean paramBoolean)
  {
    this.i.set(0, paramBoolean);
  }

  public boolean a()
  {
    return this.i.get(0);
  }

  public boolean a(h paramh)
  {
    if (paramh == null);
    do
      return false;
    while ((this.f != paramh.f) || (this.g != paramh.g) || (this.h != paramh.h));
    return true;
  }

  public int b(h paramh)
  {
    int j;
    if (!getClass().equals(paramh.getClass()))
      j = getClass().getName().compareTo(paramh.getClass().getName());
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
                return j;
                j = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramh.a()));
              }
              while (j != 0);
              if (!a())
                break;
              j = org.apache.thrift.c.a(this.f, paramh.f);
            }
            while (j != 0);
            j = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramh.b()));
          }
          while (j != 0);
          if (!b())
            break;
          j = org.apache.thrift.c.a(this.g, paramh.g);
        }
        while (j != 0);
        j = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramh.c()));
      }
      while (j != 0);
      if (!c())
        break;
      j = org.apache.thrift.c.a(this.h, paramh.h);
    }
    while (j != 0);
    return 0;
  }

  public void b(f paramf)
  {
    d();
    paramf.a();
    paramf.a(c);
    paramf.a(this.f);
    paramf.a(d);
    paramf.a(this.g);
    paramf.a(e);
    paramf.a(this.h);
    paramf.c();
    paramf.b();
  }

  public void b(boolean paramBoolean)
  {
    this.i.set(1, paramBoolean);
  }

  public boolean b()
  {
    return this.i.get(1);
  }

  public void c(boolean paramBoolean)
  {
    this.i.set(2, paramBoolean);
  }

  public boolean c()
  {
    return this.i.get(2);
  }

  public void d()
  {
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof h));
    return a((h)paramObject);
  }

  public int hashCode()
  {
    return 0;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PassportLandNodeInfo(");
    localStringBuilder.append("ip:");
    localStringBuilder.append(this.f);
    localStringBuilder.append(", ");
    localStringBuilder.append("eid:");
    localStringBuilder.append(this.g);
    localStringBuilder.append(", ");
    localStringBuilder.append("rt:");
    localStringBuilder.append(this.h);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.common.logger.thrift.mfs.h
 * JD-Core Version:    0.6.0
 */