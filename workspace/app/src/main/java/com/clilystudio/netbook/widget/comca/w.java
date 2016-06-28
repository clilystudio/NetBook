package com.clilystudio.netbook.widget.comca;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public final class w extends a
{
  private static ThreadLocal<C> d = new ThreadLocal();
  private static final ThreadLocal<ArrayList<w>> e = new ThreadLocal<>();
  private static final ThreadLocal<ArrayList<w>> f = new ThreadLocal<>();
  private static final ThreadLocal<ArrayList<w>> g = new ThreadLocal<>();
  private static final ThreadLocal<ArrayList<w>> h = new ThreadLocal<>();
  private static final ThreadLocal<ArrayList<w>> i = new ThreadLocal<>();
  private static final Interpolator j = new AccelerateDecelerateInterpolator();
  private static long v;
  private s[] A;
  private HashMap<String, s> B;
  private long b;
  private long c = -1L;
  private boolean k = false;
  private int l = 0;
  private float m = 0.0F;
  private boolean n = false;
  private long o;
  private int p = 0;
  private boolean q = false;
  private boolean r = false;
  private boolean s = false;
  private long t = 300L;
  private long u = 0L;
  private int w = 0;
  private int x = 1;
  private Interpolator y = j;
  private ArrayList<D> z = null;

  static
  {
    new m();
    new k();
    v = 10L;
  }

  public static w a(float[] paramArrayOfFloat)
  {
    w localw = new w();
    if ((paramArrayOfFloat == null) || (paramArrayOfFloat.length == 0))
      return localw;
    if ((localw.A == null) || (localw.A.length == 0))
    {
      s[] arrayOfs = new s[1];
      arrayOfs[0] = s.a("", paramArrayOfFloat);
      localw.a(arrayOfs);
    }
    while (true)
    {
      localw.s = false;
      return localw;
      localw.A[0].a(paramArrayOfFloat);
    }
  }

  public static w a(int[] paramArrayOfInt)
  {
    w localw = new w();
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0))
      return localw;
    if ((localw.A == null) || (localw.A.length == 0))
    {
      s[] arrayOfs = new s[1];
      arrayOfs[0] = s.a("", paramArrayOfInt);
      localw.a(arrayOfs);
    }
    while (true)
    {
      localw.s = false;
      return localw;
      localw.A[0].a(paramArrayOfInt);
    }
  }

  private void a(float paramFloat)
  {
    float f1 = this.y.getInterpolation(paramFloat);
    this.m = f1;
    int i1 = this.A.length;
    for (int i2 = 0; i2 < i1; i2++)
      this.A[i2].a(f1);
    if (this.z != null)
    {
      int i3 = this.z.size();
      for (int i4 = 0; i4 < i3; i4++)
        ((D)this.z.get(i4)).a(this);
    }
  }

  private void a(s[] paramArrayOfs)
  {
    this.A = paramArrayOfs;
    this.B = new HashMap(1);
    for (int i1 = 0; i1 <= 0; i1++)
    {
      s locals = paramArrayOfs[0];
      this.B.put(locals.a, locals);
    }
    this.s = false;
  }

  private void d(long paramLong)
  {
    n();
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    if (this.p != 1)
    {
      this.c = paramLong;
      this.p = 2;
    }
    this.b = (l1 - paramLong);
    c(l1);
  }

  private void n()
  {
    if (!this.s)
    {
      int i1 = this.A.length;
      for (int i2 = 0; i2 < i1; i2++)
        this.A[i2].b();
      this.s = true;
    }
  }

  private void o()
  {
    ((ArrayList)e.get()).remove(this);
    ((ArrayList)f.get()).remove(this);
    ((ArrayList)g.get()).remove(this);
    this.p = 0;
    if ((this.q) && (this.a != null))
    {
      ArrayList localArrayList = (ArrayList)this.a.clone();
      int i1 = localArrayList.size();
      for (int i2 = 0; i2 < i1; i2++)
        ((b)localArrayList.get(i2)).b(this);
    }
    this.q = false;
    this.r = false;
  }

  private void p()
  {
    n();
    ((ArrayList)e.get()).add(this);
    if ((this.u > 0L) && (this.a != null))
    {
      ArrayList localArrayList = (ArrayList)this.a.clone();
      int i1 = localArrayList.size();
      for (int i2 = 0; i2 < i1; i2++)
        ((b)localArrayList.get(i2)).a(this);
    }
  }

  private w q()
  {
    int i1 = 0;
    w localw = (w)super.e();
    if (this.z != null)
    {
      ArrayList localArrayList = this.z;
      localw.z = new ArrayList();
      int i3 = localArrayList.size();
      for (int i4 = 0; i4 < i3; i4++)
        localw.z.add(localArrayList.get(i4));
    }
    localw.c = -1L;
    localw.k = false;
    localw.l = 0;
    localw.s = false;
    localw.p = 0;
    localw.n = false;
    s[] arrayOfs = this.A;
    if (arrayOfs != null)
    {
      int i2 = arrayOfs.length;
      localw.A = new s[i2];
      localw.B = new HashMap(i2);
      while (i1 < i2)
      {
        s locals = arrayOfs[i1].a();
        localw.A[i1] = locals;
        localw.B.put(locals.a, locals);
        i1++;
      }
    }
    return localw;
  }

  public final w a(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    this.t = paramLong;
    return this;
  }

  public final void a()
  {
    if (Looper.myLooper() == null)
      throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    this.k = false;
    this.l = 0;
    this.p = 0;
    this.r = true;
    this.n = false;
    ((ArrayList)f.get()).add(this);
    if (this.u == 0L)
    {
      long l1;
      if ((!this.s) || (this.p == 0))
        l1 = 0L;
      while (true)
      {
        d(l1);
        this.p = 0;
        this.q = true;
        if (this.a == null)
          break;
        ArrayList localArrayList = (ArrayList)this.a.clone();
        int i1 = localArrayList.size();
        for (int i2 = 0; i2 < i1; i2++)
          ((b)localArrayList.get(i2)).a(this);
        l1 = AnimationUtils.currentAnimationTimeMillis() - this.b;
      }
    }
    C localC = (C)d.get();
    if (localC == null)
    {
      localC = new C(0);
      d.set(localC);
    }
    localC.sendEmptyMessage(0);
  }

  public final void a(Interpolator paramInterpolator)
  {
    if (paramInterpolator != null)
    {
      this.y = paramInterpolator;
      return;
    }
    this.y = new LinearInterpolator();
  }

  public final void a(D paramD)
  {
    if (this.z == null)
      this.z = new ArrayList();
    this.z.add(paramD);
  }

  public final void b()
  {
    if ((this.p != 0) || (((ArrayList)f.get()).contains(this)) || (((ArrayList)g.get()).contains(this)))
    {
      if ((this.q) && (this.a != null))
      {
        Iterator localIterator = ((ArrayList)this.a.clone()).iterator();
        while (localIterator.hasNext())
          ((b)localIterator.next()).c(this);
      }
      o();
    }
  }

  public final void b(long paramLong)
  {
    this.u = paramLong;
  }

  public final void c()
  {
    if ((!((ArrayList)e.get()).contains(this)) && (!((ArrayList)f.get()).contains(this)))
    {
      this.n = false;
      p();
    }
    while (true)
    {
      a(1.0F);
      o();
      return;
      if (this.s)
        continue;
      n();
    }
  }

  final boolean c(long paramLong)
  {
    if (this.p == 0)
    {
      this.p = 1;
      if (this.c >= 0L)
        break label54;
      this.b = paramLong;
    }
    while (true)
      switch (this.p)
      {
      default:
        return false;
        label54: this.b = (paramLong - this.c);
        this.c = -1L;
      case 1:
      case 2:
      }
    float f1;
    float f2;
    int i1;
    if (this.t > 0L)
    {
      f1 = (float)(paramLong - this.b) / (float)this.t;
      if (f1 < 1.0F)
        break label262;
      if (this.l < 0)
        break label147;
      f2 = Math.min(f1, 1.0F);
      i1 = 1;
    }
    while (true)
    {
      if (this.k)
        f2 = 1.0F - f2;
      a(f2);
      return i1;
      f1 = 1.0F;
      break;
      label147: if (this.a != null)
      {
        int i2 = this.a.size();
        for (int i3 = 0; i3 < i2; i3++)
          ((b)this.a.get(i3)).d(this);
      }
      if (this.x == 2)
        if (!this.k)
          break label256;
      label256: for (boolean bool = false; ; bool = true)
      {
        this.k = bool;
        this.l += (int)f1;
        f2 = f1 % 1.0F;
        this.b += this.t;
        i1 = 0;
        break;
      }
      label262: f2 = f1;
      i1 = 0;
    }
  }

  public final boolean d()
  {
    return (this.p == 1) || (this.q);
  }

  public final Object f()
  {
    if ((this.A != null) && (this.A.length > 0))
      return this.A[0].c();
    return null;
  }

  public final float g()
  {
    return this.m;
  }

  public final String toString()
  {
    String str = "ValueAnimator@" + Integer.toHexString(hashCode());
    if (this.A != null)
      for (int i1 = 0; i1 < this.A.length; i1++)
        str = str + "\n    " + this.A[i1].toString();
    return str;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.comca.w
 * JD-Core Version:    0.6.0
 */