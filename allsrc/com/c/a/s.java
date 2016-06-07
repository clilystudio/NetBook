package com.c.a;

import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class s
  implements Cloneable
{
  private static final v e = new m();
  private static final v f = new k();
  String a;
  r b = null;
  private com.xiaomi.mistatistic.sdk.a.r c;
  private Class d;
  private v g;
  private Object h;

  static
  {
    Class[] arrayOfClass1 = new Class[6];
    arrayOfClass1[0] = Float.TYPE;
    arrayOfClass1[1] = Float.class;
    arrayOfClass1[2] = Double.TYPE;
    arrayOfClass1[3] = Integer.TYPE;
    arrayOfClass1[4] = Double.class;
    arrayOfClass1[5] = Integer.class;
    Class[] arrayOfClass2 = new Class[6];
    arrayOfClass2[0] = Integer.TYPE;
    arrayOfClass2[1] = Integer.class;
    arrayOfClass2[2] = Float.TYPE;
    arrayOfClass2[3] = Double.TYPE;
    arrayOfClass2[4] = Float.class;
    arrayOfClass2[5] = Double.class;
    Class[] arrayOfClass3 = new Class[6];
    arrayOfClass3[0] = Double.TYPE;
    arrayOfClass3[1] = Double.class;
    arrayOfClass3[2] = Float.TYPE;
    arrayOfClass3[3] = Integer.TYPE;
    arrayOfClass3[4] = Float.class;
    arrayOfClass3[5] = Integer.class;
    new HashMap();
    new HashMap();
  }

  private s(String paramString)
  {
    new ReentrantReadWriteLock();
    this.a = paramString;
  }

  public static s a(String paramString, float[] paramArrayOfFloat)
  {
    return new t(paramString, paramArrayOfFloat);
  }

  public static s a(String paramString, int[] paramArrayOfInt)
  {
    return new u(paramString, paramArrayOfInt);
  }

  public s a()
  {
    try
    {
      s locals = (s)super.clone();
      locals.a = this.a;
      locals.c = this.c;
      locals.b = this.b.a();
      locals.g = this.g;
      return locals;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    return null;
  }

  void a(float paramFloat)
  {
    this.h = this.b.a(paramFloat);
  }

  public void a(float[] paramArrayOfFloat)
  {
    int i = 1;
    this.d = Float.TYPE;
    int j = paramArrayOfFloat.length;
    p[] arrayOfp = new p[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfp[0] = ((p)new p(0.0F));
      arrayOfp[i] = ((p)o.a(1.0F, paramArrayOfFloat[0]));
    }
    while (true)
    {
      this.b = new l(arrayOfp);
      return;
      arrayOfp[0] = ((p)o.a(0.0F, paramArrayOfFloat[0]));
      while (i < j)
      {
        arrayOfp[i] = ((p)o.a(i / (j - 1), paramArrayOfFloat[i]));
        i++;
      }
    }
  }

  public void a(int[] paramArrayOfInt)
  {
    int i = 1;
    this.d = Integer.TYPE;
    int j = paramArrayOfInt.length;
    q[] arrayOfq = new q[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfq[0] = ((q)new q(0.0F));
      arrayOfq[i] = ((q)o.a(1.0F, paramArrayOfInt[0]));
    }
    while (true)
    {
      this.b = new n(arrayOfq);
      return;
      arrayOfq[0] = ((q)o.a(0.0F, paramArrayOfInt[0]));
      while (i < j)
      {
        arrayOfq[i] = ((q)o.a(i / (j - 1), paramArrayOfInt[i]));
        i++;
      }
    }
  }

  final void b()
  {
    v localv;
    if (this.g == null)
    {
      if (this.d != Integer.class)
        break label44;
      localv = e;
    }
    while (true)
    {
      this.g = localv;
      if (this.g != null)
        this.b.d = this.g;
      return;
      label44: if (this.d == Float.class)
      {
        localv = f;
        continue;
      }
      localv = null;
    }
  }

  Object c()
  {
    return this.h;
  }

  public String toString()
  {
    return this.a + ": " + this.b.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.s
 * JD-Core Version:    0.6.0
 */