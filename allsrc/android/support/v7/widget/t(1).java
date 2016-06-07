package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class t extends ak
{
  private ArrayList<ay> a = new ArrayList();
  private ArrayList<ay> b = new ArrayList();
  private ArrayList<D> c = new ArrayList();
  private ArrayList<C> d = new ArrayList();
  private ArrayList<ArrayList<ay>> e = new ArrayList();
  private ArrayList<ArrayList<D>> f = new ArrayList();
  private ArrayList<ArrayList<C>> g = new ArrayList();
  private ArrayList<ay> h = new ArrayList();
  private ArrayList<ay> i = new ArrayList();
  private ArrayList<ay> j = new ArrayList();
  private ArrayList<ay> k = new ArrayList();

  private void a(C paramC)
  {
    if (paramC.a != null)
      a(paramC, paramC.a);
    if (paramC.b != null)
      a(paramC, paramC.b);
  }

  private static void a(List<ay> paramList)
  {
    for (int m = -1 + paramList.size(); m >= 0; m--)
      ViewCompat.animate(((ay)paramList.get(m)).a).cancel();
  }

  private void a(List<C> paramList, ay paramay)
  {
    for (int m = -1 + paramList.size(); m >= 0; m--)
    {
      C localC = (C)paramList.get(m);
      if ((!a(localC, paramay)) || (localC.a != null) || (localC.b != null))
        continue;
      paramList.remove(localC);
    }
  }

  private boolean a(C paramC, ay paramay)
  {
    boolean bool = false;
    if (paramC.b == paramay)
      paramC.b = null;
    while (true)
    {
      ViewCompat.setAlpha(paramay.a, 1.0F);
      ViewCompat.setTranslationX(paramay.a, 0.0F);
      ViewCompat.setTranslationY(paramay.a, 0.0F);
      a(paramay, bool);
      int m = 1;
      ay localay;
      do
      {
        return m;
        localay = paramC.a;
        m = 0;
      }
      while (localay != paramay);
      paramC.a = null;
      bool = true;
    }
  }

  private void j()
  {
    if (!b())
      i();
  }

  public final void a()
  {
    int m;
    int n;
    label24: int i1;
    if (!this.a.isEmpty())
    {
      m = 1;
      if (this.c.isEmpty())
        break label72;
      n = 1;
      if (this.d.isEmpty())
        break label77;
      i1 = 1;
      label36: if (this.b.isEmpty())
        break label82;
    }
    label72: label77: label82: for (int i2 = 1; ; i2 = 0)
    {
      if ((m != 0) || (n != 0) || (i2 != 0) || (i1 != 0))
        break label88;
      return;
      m = 0;
      break;
      n = 0;
      break label24;
      i1 = 0;
      break label36;
    }
    label88: Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ay localay = (ay)localIterator.next();
      ViewPropertyAnimatorCompat localViewPropertyAnimatorCompat = ViewCompat.animate(localay.a);
      this.j.add(localay);
      localViewPropertyAnimatorCompat.setDuration(f()).alpha(0.0F).setListener(new x(this, localay, localViewPropertyAnimatorCompat)).start();
    }
    this.a.clear();
    u localu;
    label260: v localv;
    label340: ArrayList localArrayList3;
    w localw;
    long l1;
    label415: long l2;
    label425: long l3;
    if (n != 0)
    {
      ArrayList localArrayList1 = new ArrayList();
      localArrayList1.addAll(this.c);
      this.f.add(localArrayList1);
      this.c.clear();
      localu = new u(this, localArrayList1);
      if (m != 0)
        ViewCompat.postOnAnimationDelayed(((D)localArrayList1.get(0)).a.a, localu, f());
    }
    else
    {
      if (i1 != 0)
      {
        ArrayList localArrayList2 = new ArrayList();
        localArrayList2.addAll(this.d);
        this.g.add(localArrayList2);
        this.d.clear();
        localv = new v(this, localArrayList2);
        if (m == 0)
          break label477;
        ViewCompat.postOnAnimationDelayed(((C)localArrayList2.get(0)).a.a, localv, f());
      }
      if (i2 == 0)
        break label485;
      localArrayList3 = new ArrayList();
      localArrayList3.addAll(this.b);
      this.e.add(localArrayList3);
      this.b.clear();
      localw = new w(this, localArrayList3);
      if ((m == 0) && (n == 0) && (i1 == 0))
        break label505;
      if (m == 0)
        break label487;
      l1 = f();
      if (n == 0)
        break label493;
      l2 = d();
      if (i1 == 0)
        break label499;
      l3 = g();
    }
    while (true)
    {
      long l4 = l1 + Math.max(l2, l3);
      ViewCompat.postOnAnimationDelayed(((ay)localArrayList3.get(0)).a, localw, l4);
      return;
      localu.run();
      break label260;
      label477: localv.run();
      break label340;
      label485: break;
      label487: l1 = 0L;
      break label415;
      label493: l2 = 0L;
      break label425;
      label499: l3 = 0L;
    }
    label505: localw.run();
  }

  public final boolean a(ay paramay)
  {
    c(paramay);
    this.a.add(paramay);
    return true;
  }

  public final boolean a(ay paramay, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = paramay.a;
    int m = (int)(paramInt1 + ViewCompat.getTranslationX(paramay.a));
    int n = (int)(paramInt2 + ViewCompat.getTranslationY(paramay.a));
    c(paramay);
    int i1 = paramInt3 - m;
    int i2 = paramInt4 - n;
    if ((i1 == 0) && (i2 == 0))
    {
      e(paramay);
      return false;
    }
    if (i1 != 0)
      ViewCompat.setTranslationX(localView, -i1);
    if (i2 != 0)
      ViewCompat.setTranslationY(localView, -i2);
    this.c.add(new D(paramay, m, n, paramInt3, paramInt4, 0));
    return true;
  }

  public final boolean a(ay paramay1, ay paramay2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = ViewCompat.getTranslationX(paramay1.a);
    float f2 = ViewCompat.getTranslationY(paramay1.a);
    float f3 = ViewCompat.getAlpha(paramay1.a);
    c(paramay1);
    int m = (int)(paramInt3 - paramInt1 - f1);
    int n = (int)(paramInt4 - paramInt2 - f2);
    ViewCompat.setTranslationX(paramay1.a, f1);
    ViewCompat.setTranslationY(paramay1.a, f2);
    ViewCompat.setAlpha(paramay1.a, f3);
    if ((paramay2 != null) && (paramay2.a != null))
    {
      c(paramay2);
      ViewCompat.setTranslationX(paramay2.a, -m);
      ViewCompat.setTranslationY(paramay2.a, -n);
      ViewCompat.setAlpha(paramay2.a, 0.0F);
    }
    this.d.add(new C(paramay1, paramay2, paramInt1, paramInt2, paramInt3, paramInt4, 0));
    return true;
  }

  public final boolean b()
  {
    return (!this.b.isEmpty()) || (!this.d.isEmpty()) || (!this.c.isEmpty()) || (!this.a.isEmpty()) || (!this.i.isEmpty()) || (!this.j.isEmpty()) || (!this.h.isEmpty()) || (!this.k.isEmpty()) || (!this.f.isEmpty()) || (!this.e.isEmpty()) || (!this.g.isEmpty());
  }

  public final boolean b(ay paramay)
  {
    c(paramay);
    ViewCompat.setAlpha(paramay.a, 0.0F);
    this.b.add(paramay);
    return true;
  }

  public final void c()
  {
    for (int m = -1 + this.c.size(); m >= 0; m--)
    {
      D localD2 = (D)this.c.get(m);
      View localView2 = localD2.a.a;
      ViewCompat.setTranslationY(localView2, 0.0F);
      ViewCompat.setTranslationX(localView2, 0.0F);
      e(localD2.a);
      this.c.remove(m);
    }
    for (int n = -1 + this.a.size(); n >= 0; n--)
    {
      d((ay)this.a.get(n));
      this.a.remove(n);
    }
    for (int i1 = -1 + this.b.size(); i1 >= 0; i1--)
    {
      ay localay2 = (ay)this.b.get(i1);
      ViewCompat.setAlpha(localay2.a, 1.0F);
      f(localay2);
      this.b.remove(i1);
    }
    for (int i2 = -1 + this.d.size(); i2 >= 0; i2--)
      a((C)this.d.get(i2));
    this.d.clear();
    if (!b())
      return;
    for (int i3 = -1 + this.f.size(); i3 >= 0; i3--)
    {
      ArrayList localArrayList3 = (ArrayList)this.f.get(i3);
      for (int i8 = -1 + localArrayList3.size(); i8 >= 0; i8--)
      {
        D localD1 = (D)localArrayList3.get(i8);
        View localView1 = localD1.a.a;
        ViewCompat.setTranslationY(localView1, 0.0F);
        ViewCompat.setTranslationX(localView1, 0.0F);
        e(localD1.a);
        localArrayList3.remove(i8);
        if (!localArrayList3.isEmpty())
          continue;
        this.f.remove(localArrayList3);
      }
    }
    for (int i4 = -1 + this.e.size(); i4 >= 0; i4--)
    {
      ArrayList localArrayList2 = (ArrayList)this.e.get(i4);
      for (int i7 = -1 + localArrayList2.size(); i7 >= 0; i7--)
      {
        ay localay1 = (ay)localArrayList2.get(i7);
        ViewCompat.setAlpha(localay1.a, 1.0F);
        f(localay1);
        localArrayList2.remove(i7);
        if (!localArrayList2.isEmpty())
          continue;
        this.e.remove(localArrayList2);
      }
    }
    for (int i5 = -1 + this.g.size(); i5 >= 0; i5--)
    {
      ArrayList localArrayList1 = (ArrayList)this.g.get(i5);
      for (int i6 = -1 + localArrayList1.size(); i6 >= 0; i6--)
      {
        a((C)localArrayList1.get(i6));
        if (!localArrayList1.isEmpty())
          continue;
        this.g.remove(localArrayList1);
      }
    }
    a(this.j);
    a(this.i);
    a(this.h);
    a(this.k);
    i();
  }

  public final void c(ay paramay)
  {
    View localView = paramay.a;
    ViewCompat.animate(localView).cancel();
    for (int m = -1 + this.c.size(); m >= 0; m--)
    {
      if (((D)this.c.get(m)).a != paramay)
        continue;
      ViewCompat.setTranslationY(localView, 0.0F);
      ViewCompat.setTranslationX(localView, 0.0F);
      e(paramay);
      this.c.remove(m);
    }
    a(this.d, paramay);
    if (this.a.remove(paramay))
    {
      ViewCompat.setAlpha(localView, 1.0F);
      d(paramay);
    }
    if (this.b.remove(paramay))
    {
      ViewCompat.setAlpha(localView, 1.0F);
      f(paramay);
    }
    for (int n = -1 + this.g.size(); n >= 0; n--)
    {
      ArrayList localArrayList3 = (ArrayList)this.g.get(n);
      a(localArrayList3, paramay);
      if (!localArrayList3.isEmpty())
        continue;
      this.g.remove(n);
    }
    int i1 = -1 + this.f.size();
    if (i1 >= 0)
    {
      ArrayList localArrayList2 = (ArrayList)this.f.get(i1);
      for (int i3 = -1 + localArrayList2.size(); ; i3--)
      {
        if (i3 >= 0)
        {
          if (((D)localArrayList2.get(i3)).a != paramay)
            continue;
          ViewCompat.setTranslationY(localView, 0.0F);
          ViewCompat.setTranslationX(localView, 0.0F);
          e(paramay);
          localArrayList2.remove(i3);
          if (localArrayList2.isEmpty())
            this.f.remove(i1);
        }
        i1--;
        break;
      }
    }
    for (int i2 = -1 + this.e.size(); i2 >= 0; i2--)
    {
      ArrayList localArrayList1 = (ArrayList)this.e.get(i2);
      if (!localArrayList1.remove(paramay))
        continue;
      ViewCompat.setAlpha(localView, 1.0F);
      f(paramay);
      if (!localArrayList1.isEmpty())
        continue;
      this.e.remove(i2);
    }
    this.j.remove(paramay);
    this.h.remove(paramay);
    this.k.remove(paramay);
    this.i.remove(paramay);
    j();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.t
 * JD-Core Version:    0.6.0
 */