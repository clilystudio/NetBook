package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.g;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.k;

public class d
  implements Serializable, Cloneable, org.apache.thrift.b<d, d.a>
{
  public static final Map<d.a, org.apache.thrift.meta_data.b> f;
  private static final k g = new k("Target");
  private static final org.apache.thrift.protocol.c h = new org.apache.thrift.protocol.c("channelId", 10, 1);
  private static final org.apache.thrift.protocol.c i = new org.apache.thrift.protocol.c("userId", 11, 2);
  private static final org.apache.thrift.protocol.c j = new org.apache.thrift.protocol.c("server", 11, 3);
  private static final org.apache.thrift.protocol.c k = new org.apache.thrift.protocol.c("resource", 11, 4);
  private static final org.apache.thrift.protocol.c l = new org.apache.thrift.protocol.c("isPreview", 2, 5);
  public long a = 5L;
  public String b;
  public String c = "xiaomi.com";
  public String d = "";
  public boolean e = false;
  private BitSet m = new BitSet(2);

  static
  {
    EnumMap localEnumMap = new EnumMap(d.a.class);
    localEnumMap.put(d.a.a, new org.apache.thrift.meta_data.b("channelId", 1, new org.apache.thrift.meta_data.c(10)));
    localEnumMap.put(d.a.b, new org.apache.thrift.meta_data.b("userId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(d.a.c, new org.apache.thrift.meta_data.b("server", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(d.a.d, new org.apache.thrift.meta_data.b("resource", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(d.a.e, new org.apache.thrift.meta_data.b("isPreview", 2, new org.apache.thrift.meta_data.c(2)));
    f = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(d.class, f);
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
        if (localc.a == 10)
        {
          this.a = paramf.n();
          a(true);
          continue;
        }
        i.a(paramf, localc.a);
        break;
      case 2:
        if (localc.a == 11)
        {
          this.b = paramf.p();
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
        if (localc.a == 2)
        {
          this.e = paramf.j();
          b(true);
          continue;
        }
        i.a(paramf, localc.a);
      }
    }
    paramf.e();
    if (!a())
      throw new g("Required field 'channelId' was not found in serialized data! Struct: " + toString());
    f();
  }

  public void a(boolean paramBoolean)
  {
    this.m.set(0, paramBoolean);
  }

  public boolean a()
  {
    return this.m.get(0);
  }

  public boolean a(d paramd)
  {
    if (paramd == null);
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
            do
              return false;
            while (this.a != paramd.a);
            bool1 = b();
            bool2 = paramd.b();
          }
          while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(paramd.b))));
          bool3 = c();
          bool4 = paramd.c();
        }
        while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.c.equals(paramd.c))));
        bool5 = d();
        bool6 = paramd.d();
      }
      while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.d.equals(paramd.d))));
      bool7 = e();
      bool8 = paramd.e();
    }
    while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (this.e != paramd.e)));
    return true;
  }

  public int b(d paramd)
  {
    int n;
    if (!getClass().equals(paramd.getClass()))
      n = getClass().getName().compareTo(paramd.getClass().getName());
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
                        return n;
                        n = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paramd.a()));
                      }
                      while (n != 0);
                      if (!a())
                        break;
                      n = org.apache.thrift.c.a(this.a, paramd.a);
                    }
                    while (n != 0);
                    n = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paramd.b()));
                  }
                  while (n != 0);
                  if (!b())
                    break;
                  n = org.apache.thrift.c.a(this.b, paramd.b);
                }
                while (n != 0);
                n = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paramd.c()));
              }
              while (n != 0);
              if (!c())
                break;
              n = org.apache.thrift.c.a(this.c, paramd.c);
            }
            while (n != 0);
            n = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paramd.d()));
          }
          while (n != 0);
          if (!d())
            break;
          n = org.apache.thrift.c.a(this.d, paramd.d);
        }
        while (n != 0);
        n = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paramd.e()));
      }
      while (n != 0);
      if (!e())
        break;
      n = org.apache.thrift.c.a(this.e, paramd.e);
    }
    while (n != 0);
    return 0;
  }

  public void b(f paramf)
  {
    f();
    paramf.a();
    paramf.a(h);
    paramf.a(this.a);
    if (this.b != null)
    {
      paramf.a(i);
      paramf.a(this.b);
    }
    if ((this.c != null) && (c()))
    {
      paramf.a(j);
      paramf.a(this.c);
    }
    if ((this.d != null) && (d()))
    {
      paramf.a(k);
      paramf.a(this.d);
    }
    if (e())
    {
      paramf.a(l);
      paramf.a(this.e);
    }
    paramf.c();
    paramf.b();
  }

  public void b(boolean paramBoolean)
  {
    this.m.set(1, paramBoolean);
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
    return this.m.get(1);
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    do
      return false;
    while (!(paramObject instanceof d));
    return a((d)paramObject);
  }

  public void f()
  {
    if (this.b == null)
      throw new g("Required field 'userId' was not present! Struct: " + toString());
  }

  public int hashCode()
  {
    return 0;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Target(");
    localStringBuilder.append("channelId:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("userId:");
    if (this.b == null)
    {
      localStringBuilder.append("null");
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("server:");
        if (this.c != null)
          break label192;
        localStringBuilder.append("null");
      }
      label97: if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("resource:");
        if (this.d != null)
          break label204;
        localStringBuilder.append("null");
      }
    }
    while (true)
    {
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("isPreview:");
        localStringBuilder.append(this.e);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.b);
      break;
      label192: localStringBuilder.append(this.c);
      break label97;
      label204: localStringBuilder.append(this.d);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.d
 * JD-Core Version:    0.6.0
 */