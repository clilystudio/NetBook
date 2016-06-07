package com.c.b;

import android.view.View;
import android.view.animation.Interpolator;
import com.c.a.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

final class b extends a
{
  private final WeakReference<View> a;
  private long b;
  private boolean c = false;
  private long d = 0L;
  private boolean e = false;
  private Interpolator f;
  private boolean g = false;
  private com.c.a.b h = null;
  private d i = new d(this, 0);
  private ArrayList<e> j = new ArrayList();
  private Runnable k = new c(this);
  private HashMap<com.c.a.a, f> l = new HashMap();

  b(View paramView)
  {
    this.a = new WeakReference(paramView);
  }

  private void a(int paramInt, float paramFloat)
  {
    View localView1 = (View)this.a.get();
    if (localView1 != null);
    float f1;
    float f2;
    com.c.a.a locala;
    int i1;
    label208: int m;
    switch (paramInt)
    {
    default:
      f1 = 0.0F;
      f2 = paramFloat - f1;
      if (this.l.size() <= 0)
        break;
      Iterator localIterator = this.l.keySet().iterator();
      f localf;
      label263: 
      do
      {
        if (!localIterator.hasNext())
          break label450;
        locala = (com.c.a.a)localIterator.next();
        localf = (f)this.l.get(locala);
        if (((paramInt & localf.a) == 0) || (localf.b == null))
          break label444;
        int n = localf.b.size();
        i1 = 0;
        if (i1 >= n)
          break label444;
        if (((e)localf.b.get(i1)).a != paramInt)
          break;
        localf.b.remove(i1);
        localf.a &= (paramInt ^ 0xFFFFFFFF);
        m = 1;
      }
      while ((m == 0) || (localf.a != 0));
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
      e locale = new e(paramInt, f1, f2);
      this.j.add(locale);
      View localView2 = (View)this.a.get();
      if (localView2 != null)
      {
        localView2.removeCallbacks(this.k);
        localView2.post(this.k);
      }
      return;
      f1 = localView1.getTranslationX();
      break;
      f1 = localView1.getTranslationY();
      break;
      f1 = localView1.getRotation();
      break;
      f1 = localView1.getRotationX();
      break;
      f1 = localView1.getRotationY();
      break;
      f1 = localView1.getScaleX();
      break;
      f1 = localView1.getScaleY();
      break;
      f1 = localView1.getX();
      break;
      f1 = localView1.getY();
      break;
      f1 = localView1.getAlpha();
      break;
      i1++;
      break label208;
      label444: m = 0;
      break label263;
      label450: locala = null;
    }
  }

  private void b()
  {
    w localw = w.a(new float[] { 1.0F });
    ArrayList localArrayList = (ArrayList)this.j.clone();
    this.j.clear();
    int m = localArrayList.size();
    int n = 0;
    int i1 = 0;
    while (n < m)
    {
      i1 |= ((e)localArrayList.get(n)).a;
      n++;
    }
    this.l.put(localw, new f(i1, localArrayList));
    localw.a(this.i);
    localw.a(this.i);
    if (this.e)
      localw.b(this.d);
    if (this.c)
      localw.a(this.b);
    if (this.g)
      localw.a(this.f);
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
    this.c = true;
    this.b = 150L;
    return this;
  }

  public final a a(Interpolator paramInterpolator)
  {
    this.g = true;
    this.f = paramInterpolator;
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
    this.e = true;
    this.d = paramLong;
    return this;
  }

  public final a c(float paramFloat)
  {
    a(512, paramFloat);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.b.b
 * JD-Core Version:    0.6.0
 */