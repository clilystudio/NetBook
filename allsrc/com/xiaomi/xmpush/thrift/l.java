package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
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

public class l
  implements Serializable, Cloneable, org.apache.thrift.b<l, l.a>
{
  public static final Map<l.a, org.apache.thrift.meta_data.b> g;
  private static final k h = new k("XmPushActionSendFeedback");
  private static final org.apache.thrift.protocol.c i = new org.apache.thrift.protocol.c("debug", 11, 1);
  private static final org.apache.thrift.protocol.c j = new org.apache.thrift.protocol.c("target", 12, 2);
  private static final org.apache.thrift.protocol.c k = new org.apache.thrift.protocol.c("id", 11, 3);
  private static final org.apache.thrift.protocol.c l = new org.apache.thrift.protocol.c("appId", 11, 4);
  private static final org.apache.thrift.protocol.c m = new org.apache.thrift.protocol.c("feedbacks", 13, 5);
  private static final org.apache.thrift.protocol.c n = new org.apache.thrift.protocol.c("category", 11, 6);
  public String a;
  public d b;
  public String c;
  public String d;
  public Map<String, String> e;
  public String f;

  static
  {
    EnumMap localEnumMap = new EnumMap(l.a.class);
    localEnumMap.put(l.a.a, new org.apache.thrift.meta_data.b("debug", 2, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(l.a.b, new org.apache.thrift.meta_data.b("target", 2, new org.apache.thrift.meta_data.g(12, d.class)));
    localEnumMap.put(l.a.c, new org.apache.thrift.meta_data.b("id", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(l.a.d, new org.apache.thrift.meta_data.b("appId", 1, new org.apache.thrift.meta_data.c(11)));
    localEnumMap.put(l.a.e, new org.apache.thrift.meta_data.b("feedbacks", 2, new org.apache.thrift.meta_data.e(13, new org.apache.thrift.meta_data.c(11), new org.apache.thrift.meta_data.c(11))));
    localEnumMap.put(l.a.f, new org.apache.thrift.meta_data.b("category", 2, new org.apache.thrift.meta_data.c(11)));
    g = Collections.unmodifiableMap(localEnumMap);
    org.apache.thrift.meta_data.b.a(l.class, g);
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
        if (localc.a == 13)
        {
          org.apache.thrift.protocol.e locale = paramf.g();
          this.e = new HashMap(2 * locale.c);
          for (int i1 = 0; i1 < locale.c; i1++)
          {
            String str1 = paramf.p();
            String str2 = paramf.p();
            this.e.put(str1, str2);
          }
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
      }
    }
    paramf.e();
    g();
  }

  public boolean a()
  {
    return this.a != null;
  }

  public boolean a(l paraml)
  {
    if (paraml == null);
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
                bool2 = paraml.a();
              }
              while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paraml.a))));
              bool3 = b();
              bool4 = paraml.b();
            }
            while (((bool3) || (bool4)) && ((!bool3) || (!bool4) || (!this.b.a(paraml.b))));
            bool5 = c();
            bool6 = paraml.c();
          }
          while (((bool5) || (bool6)) && ((!bool5) || (!bool6) || (!this.c.equals(paraml.c))));
          bool7 = d();
          bool8 = paraml.d();
        }
        while (((bool7) || (bool8)) && ((!bool7) || (!bool8) || (!this.d.equals(paraml.d))));
        bool9 = e();
        bool10 = paraml.e();
      }
      while (((bool9) || (bool10)) && ((!bool9) || (!bool10) || (!this.e.equals(paraml.e))));
      bool11 = f();
      bool12 = paraml.f();
    }
    while (((bool11) || (bool12)) && ((!bool11) || (!bool12) || (!this.f.equals(paraml.f))));
    return true;
  }

  public int b(l paraml)
  {
    int i1;
    if (!getClass().equals(paraml.getClass()))
      i1 = getClass().getName().compareTo(paraml.getClass().getName());
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
                            i1 = Boolean.valueOf(a()).compareTo(Boolean.valueOf(paraml.a()));
                          }
                          while (i1 != 0);
                          if (!a())
                            break;
                          i1 = org.apache.thrift.c.a(this.a, paraml.a);
                        }
                        while (i1 != 0);
                        i1 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(paraml.b()));
                      }
                      while (i1 != 0);
                      if (!b())
                        break;
                      i1 = org.apache.thrift.c.a(this.b, paraml.b);
                    }
                    while (i1 != 0);
                    i1 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(paraml.c()));
                  }
                  while (i1 != 0);
                  if (!c())
                    break;
                  i1 = org.apache.thrift.c.a(this.c, paraml.c);
                }
                while (i1 != 0);
                i1 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(paraml.d()));
              }
              while (i1 != 0);
              if (!d())
                break;
              i1 = org.apache.thrift.c.a(this.d, paraml.d);
            }
            while (i1 != 0);
            i1 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(paraml.e()));
          }
          while (i1 != 0);
          if (!e())
            break;
          i1 = org.apache.thrift.c.a(this.e, paraml.e);
        }
        while (i1 != 0);
        i1 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(paraml.f()));
      }
      while (i1 != 0);
      if (!f())
        break;
      i1 = org.apache.thrift.c.a(this.f, paraml.f);
    }
    while (i1 != 0);
    return 0;
  }

  public void b(f paramf)
  {
    g();
    paramf.a();
    if ((this.a != null) && (a()))
    {
      paramf.a(i);
      paramf.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramf.a(j);
      this.b.b(paramf);
    }
    if (this.c != null)
    {
      paramf.a(k);
      paramf.a(this.c);
    }
    if (this.d != null)
    {
      paramf.a(l);
      paramf.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramf.a(m);
      paramf.a(new org.apache.thrift.protocol.e(11, 11, this.e.size()));
      Iterator localIterator = this.e.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramf.a((String)localEntry.getKey());
        paramf.a((String)localEntry.getValue());
      }
    }
    if ((this.f != null) && (f()))
    {
      paramf.a(n);
      paramf.a(this.f);
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
    while (!(paramObject instanceof l));
    return a((l)paramObject);
  }

  public boolean f()
  {
    return this.f != null;
  }

  public void g()
  {
    if (this.c == null)
      throw new org.apache.thrift.protocol.g("Required field 'id' was not present! Struct: " + toString());
    if (this.d == null)
      throw new org.apache.thrift.protocol.g("Required field 'appId' was not present! Struct: " + toString());
  }

  public int hashCode()
  {
    return 0;
  }

  public String toString()
  {
    int i1 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionSendFeedback(");
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
        break label318;
      if (i2 == 0)
        localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.b != null)
        break label256;
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
          break label282;
        localStringBuilder.append("null");
        label155: if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("feedbacks:");
          if (this.e != null)
            break label294;
          localStringBuilder.append("null");
        }
        label193: if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.f != null)
            break label306;
          localStringBuilder.append("null");
        }
      }
      while (true)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label256: localStringBuilder.append(this.b);
        i1 = 0;
        break label89;
        localStringBuilder.append(this.c);
        break label124;
        label282: localStringBuilder.append(this.d);
        break label155;
        label294: localStringBuilder.append(this.e);
        break label193;
        label306: localStringBuilder.append(this.f);
      }
      label318: i1 = i2;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.xmpush.thrift.l
 * JD-Core Version:    0.6.0
 */