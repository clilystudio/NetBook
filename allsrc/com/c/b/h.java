package com.c.b;

import android.view.View;
import android.view.animation.Interpolator;
import com.c.a.b;
import com.c.a.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

final class h extends a
{
  private final com.c.b.a.a a;
  private final WeakReference<View> b;
  private long c;
  private boolean d = false;
  private long e = 0L;
  private boolean f = false;
  private Interpolator g;
  private boolean h = false;
  private b i = null;
  private j j = new j(this, 0);
  private ArrayList<k> k = new ArrayList();
  private Runnable l = new i(this);
  private HashMap<com.c.a.a, l> m = new HashMap();

  h(View paramView)
  {
    this.b = new WeakReference(paramView);
    this.a = com.c.b.a.a.a(paramView);
  }

  private void a(int paramInt, float paramFloat)
  {
    float f1;
    float f2;
    com.c.a.a locala;
    int i2;
    label190: int n;
    switch (paramInt)
    {
    default:
      f1 = 0.0F;
      f2 = paramFloat - f1;
      if (this.m.size() <= 0)
        break;
      Iterator localIterator = this.m.keySet().iterator();
      l locall;
      label245: 
      do
      {
        if (!localIterator.hasNext())
          break label451;
        locala = (com.c.a.a)localIterator.next();
        locall = (l)this.m.get(locala);
        if (((paramInt & locall.a) == 0) || (locall.b == null))
          break label445;
        int i1 = locall.b.size();
        i2 = 0;
        if (i2 >= i1)
          break label445;
        if (((k)locall.b.get(i2)).a != paramInt)
          break;
        locall.b.remove(i2);
        locall.a &= (paramInt ^ 0xFFFFFFFF);
        n = 1;
      }
      while ((n == 0) || (locall.a != 0));
    case 1:
    case 2:
    case 16:
    case 32:
    case 64:
    case 4:
    case 8:
    case 128:
    case 256:
    case 512:
    }
    while (true)
    {
      if (locala != null)
        locala.b();
      k localk = new k(paramInt, f1, f2);
      this.k.add(localk);
      View localView = (View)this.b.get();
      if (localView != null)
      {
        localView.removeCallbacks(this.l);
        localView.post(this.l);
      }
      return;
      f1 = this.a.g();
      break;
      f1 = this.a.h();
      break;
      f1 = this.a.b();
      break;
      f1 = this.a.c();
      break;
      f1 = this.a.d();
      break;
      f1 = this.a.e();
      break;
      f1 = this.a.f();
      break;
      f1 = this.a.i();
      break;
      f1 = this.a.j();
      break;
      f1 = this.a.a();
      break;
      i2++;
      break label190;
      label445: n = 0;
      break label245;
      label451: locala = null;
    }
  }

  private void b()
  {
    w localw = w.a(new float[] { 1.0F });
    ArrayList localArrayList = (ArrayList)this.k.clone();
    this.k.clear();
    int n = localArrayList.size();
    int i1 = 0;
    int i2 = 0;
    while (i1 < n)
    {
      i2 |= ((k)localArrayList.get(i1)).a;
      i1++;
    }
    this.m.put(localw, new l(i2, localArrayList));
    localw.a(this.j);
    localw.a(this.j);
    if (this.f)
      localw.b(this.e);
    if (this.d)
      localw.a(this.c);
    if (this.h)
      localw.a(this.g);
    localw.a();
  }

  public final a a(float paramFloat)
  {
    a(16, paramFloat);
    return this;
  }

  public final a a(long paramLong)
  {
    if (150L < 0L)
      throw new IllegalArgumentException("Animators cannot have negative duration: " + 150L);
    this.d = true;
    this.c = 150L;
    return this;
  }

  public final a a(Interpolator paramInterpolator)
  {
    this.h = true;
    this.g = paramInterpolator;
    return this;
  }

  public final void a()
  {
    b();
  }

  public final a b(float paramFloat)
  {
    a(2, paramFloat);
    return this;
  }

  public final a b(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    this.f = true;
    this.e = paramLong;
    return this;
  }

  public final a c(float paramFloat)
  {
    a(512, paramFloat);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.b.h
 * JD-Core Version:    0.6.0
 */