package android.support.v7.widget;

import android.support.v4.os.TraceCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ar
{
  final ArrayList<ay> a = new ArrayList();
  final ArrayList<ay> b = new ArrayList();
  private ArrayList<ay> d = null;
  private final List<ay> e = Collections.unmodifiableList(this.a);
  private int f = 2;
  private aq g;
  private au h;

  public ar(RecyclerView paramRecyclerView)
  {
  }

  private ay a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = 0;
    int j = this.a.size();
    ay localay1;
    for (int k = 0; k < j; k++)
    {
      localay1 = (ay)this.a.get(k);
      if ((localay1.f()) || (localay1.c() != paramInt1) || (localay1.i()) || ((!aw.d(this.c.e)) && (localay1.m())))
        continue;
      localay1.b(32);
      return localay1;
    }
    int i1;
    label126: View localView;
    if (!paramBoolean)
    {
      q localq = this.c.c;
      int n = localq.c.size();
      i1 = 0;
      if (i1 >= n)
        break label275;
      localView = (View)localq.c.get(i1);
      ay localay2 = localq.a.b(localView);
      if ((localay2.c() != paramInt1) || (localay2.i()))
        break label269;
      label181: if (localView != null)
        this.c.d.c(this.c.a(localView));
    }
    int m = this.b.size();
    while (true)
    {
      if (i >= m)
        break label287;
      localay1 = (ay)this.b.get(i);
      if ((!localay1.i()) && (localay1.c() == paramInt1))
      {
        if (paramBoolean)
          break;
        this.b.remove(i);
        return localay1;
        label269: i1++;
        break label126;
        label275: localView = null;
        break label181;
      }
      i++;
    }
    label287: return null;
  }

  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    for (int i = -1 + paramViewGroup.getChildCount(); i >= 0; i--)
    {
      View localView = paramViewGroup.getChildAt(i);
      if (!(localView instanceof ViewGroup))
        continue;
      a((ViewGroup)localView, true);
    }
    if (!paramBoolean)
      return;
    if (paramViewGroup.getVisibility() == 4)
    {
      paramViewGroup.setVisibility(0);
      paramViewGroup.setVisibility(4);
      return;
    }
    int j = paramViewGroup.getVisibility();
    paramViewGroup.setVisibility(4);
    paramViewGroup.setVisibility(j);
  }

  private void c(ay paramay)
  {
    ViewCompat.setAccessibilityDelegate(paramay.a, null);
    if (RecyclerView.s(this.c) != null)
      RecyclerView.s(this.c);
    if (RecyclerView.f(this.c) != null)
      RecyclerView.f(this.c);
    this.c.e.a(paramay);
    d().a(paramay);
  }

  private ay d(int paramInt)
  {
    int i;
    if (this.d != null)
    {
      i = this.d.size();
      if (i != 0);
    }
    else
    {
      return null;
    }
    for (int j = 0; j < i; j++)
    {
      ay localay = (ay)this.d.get(j);
      if ((localay.f()) || (localay.c() != paramInt))
        continue;
      localay.b(32);
      return localay;
    }
    RecyclerView.f(this.c);
    return null;
  }

  public final void a()
  {
    this.a.clear();
    c();
  }

  public final void a(int paramInt)
  {
    this.f = paramInt;
    for (int i = -1 + this.b.size(); (i >= 0) && (this.b.size() > paramInt); i--)
      c(i);
  }

  final void a(aq paramaq)
  {
    if (this.g != null)
      this.g.b();
    this.g = paramaq;
    if (paramaq != null)
    {
      aq localaq = this.g;
      this.c.a();
      localaq.a();
    }
  }

  final void a(au paramau)
  {
    this.h = paramau;
  }

  final void a(ay paramay)
  {
    boolean bool1 = true;
    if ((paramay.d()) || (paramay.a.getParent() != null))
    {
      StringBuilder localStringBuilder = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:").append(paramay.d()).append(" isAttached:");
      if (paramay.a.getParent() != null);
      while (true)
      {
        throw new IllegalArgumentException(bool1);
        bool1 = false;
      }
    }
    if (paramay.n())
      throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramay);
    if (paramay.b())
      throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    boolean bool2 = ay.a(paramay);
    if ((RecyclerView.f(this.c) != null) && (bool2))
      RecyclerView.f(this.c);
    if (paramay.p())
    {
      boolean bool3 = paramay.a(78);
      int i = 0;
      if (!bool3)
      {
        int j = this.b.size();
        if ((j == this.f) && (j > 0))
          c(0);
        int k = this.f;
        i = 0;
        if (j < k)
        {
          this.b.add(paramay);
          i = bool1;
        }
      }
      if (i == 0)
        c(paramay);
    }
    this.c.e.a(paramay);
  }

  public final void a(View paramView)
  {
    ay localay = RecyclerView.b(paramView);
    if (localay.n())
      this.c.removeDetachedView(paramView, false);
    if (localay.d())
      localay.e();
    while (true)
    {
      a(localay);
      return;
      if (!localay.f())
        continue;
      localay.g();
    }
  }

  public final View b(int paramInt)
  {
    int i = 1;
    if ((paramInt < 0) || (paramInt >= this.c.e.d()))
      throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + this.c.e.d());
    int i4;
    int j;
    Object localObject1;
    if (this.c.e.a())
    {
      ay localay3 = d(paramInt);
      if (localay3 != null)
      {
        i4 = i;
        j = i4;
        localObject1 = localay3;
      }
    }
    while (true)
    {
      int i3;
      label256: int k;
      if (localObject1 == null)
      {
        localObject1 = a(paramInt, -1, false);
        if (localObject1 != null)
          if (!((ay)localObject1).m())
          {
            if ((((ay)localObject1).b < 0) || (((ay)localObject1).b >= RecyclerView.f(this.c).a()))
            {
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + localObject1);
              i4 = 0;
              break;
            }
            if ((!this.c.e.a()) && (RecyclerView.f(this.c).a(((ay)localObject1).b) != ((ay)localObject1).e))
            {
              i3 = 0;
              if (i3 != 0)
                break label387;
              ((ay)localObject1).b(4);
              if (!((ay)localObject1).d())
                break label373;
              this.c.removeDetachedView(((ay)localObject1).a, false);
              ((ay)localObject1).e();
              a((ay)localObject1);
              localObject1 = null;
              k = j;
            }
          }
      }
      while (true)
      {
        label373: ay localay1;
        if (localObject1 == null)
        {
          int i1 = this.c.b.a(paramInt);
          if ((i1 < 0) || (i1 >= RecyclerView.f(this.c).a()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + i1 + ").state:" + this.c.e.d());
            RecyclerView.f(this.c);
            i3 = i;
            break;
            if (!((ay)localObject1).f())
              break label256;
            ((ay)localObject1).g();
            break label256;
            label387: k = i;
            continue;
          }
          int i2 = RecyclerView.f(this.c).a(i1);
          RecyclerView.f(this.c);
          if ((localObject1 == null) && (this.h != null))
          {
            View localView2 = this.h.a();
            if (localView2 != null)
            {
              localObject1 = this.c.a(localView2);
              if (localObject1 == null)
                throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
              if (((ay)localObject1).b())
                throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
            }
          }
          if (localObject1 == null)
          {
            ay localay2 = d().a(i2);
            if (localay2 != null)
            {
              localay2.o();
              if ((RecyclerView.i()) && ((localay2.a instanceof ViewGroup)))
                a((ViewGroup)localay2.a, false);
            }
            localObject1 = localay2;
          }
          if (localObject1 == null)
          {
            ah localah = RecyclerView.f(this.c);
            RecyclerView localRecyclerView = this.c;
            TraceCompat.beginSection("RV CreateView");
            localay1 = localah.a(localRecyclerView, i2);
            localay1.e = i2;
            TraceCompat.endSection();
          }
        }
        for (Object localObject2 = localay1; ; localObject2 = localObject1)
        {
          int n;
          if ((this.c.e.a()) && (((ay)localObject2).l()))
          {
            ((ay)localObject2).f = paramInt;
            n = 0;
          }
          while (true)
          {
            ViewGroup.LayoutParams localLayoutParams = ((ay)localObject2).a.getLayoutParams();
            ap localap;
            if (localLayoutParams == null)
            {
              localap = (ap)this.c.generateDefaultLayoutParams();
              ((ay)localObject2).a.setLayoutParams(localap);
              label658: localap.a = ((ay)localObject2);
              if ((k == 0) || (n == 0))
                break label879;
            }
            while (true)
            {
              localap.d = i;
              return ((ay)localObject2).a;
              if ((((ay)localObject2).l()) && (!((ay)localObject2).j()) && (!((ay)localObject2).i()))
                break label884;
              int m = this.c.b.a(paramInt);
              RecyclerView.f(this.c).b((ay)localObject2, m);
              View localView1 = ((ay)localObject2).a;
              if ((RecyclerView.q(this.c) != null) && (RecyclerView.q(this.c).isEnabled()))
              {
                if (ViewCompat.getImportantForAccessibility(localView1) == 0)
                  ViewCompat.setImportantForAccessibility(localView1, i);
                if (!ViewCompat.hasAccessibilityDelegate(localView1))
                  ViewCompat.setAccessibilityDelegate(localView1, RecyclerView.r(this.c).b);
              }
              if (this.c.e.a())
                ((ay)localObject2).f = paramInt;
              n = i;
              break;
              if (!this.c.checkLayoutParams(localLayoutParams))
              {
                localap = (ap)this.c.generateLayoutParams(localLayoutParams);
                ((ay)localObject2).a.setLayoutParams(localap);
                break label658;
              }
              localap = (ap)localLayoutParams;
              break label658;
              label879: i = 0;
            }
            label884: n = 0;
          }
        }
        k = j;
      }
      localObject1 = null;
      j = 0;
    }
  }

  public final List<ay> b()
  {
    return this.e;
  }

  final void b(ay paramay)
  {
    if ((!paramay.k()) || (!RecyclerView.h(this.c)) || (this.d == null))
      this.a.remove(paramay);
    while (true)
    {
      ay.a(paramay, null);
      paramay.g();
      return;
      this.d.remove(paramay);
    }
  }

  final void b(View paramView)
  {
    ay localay = RecyclerView.b(paramView);
    ay.a(localay, null);
    localay.g();
    a(localay);
  }

  final void c()
  {
    for (int i = -1 + this.b.size(); i >= 0; i--)
      c(i);
    this.b.clear();
  }

  final void c(int paramInt)
  {
    c((ay)this.b.get(paramInt));
    this.b.remove(paramInt);
  }

  final void c(View paramView)
  {
    ay localay = RecyclerView.b(paramView);
    localay.a(this);
    if ((!localay.k()) || (!RecyclerView.h(this.c)))
    {
      if ((localay.i()) && (!localay.m()))
      {
        RecyclerView.f(this.c);
        throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
      }
      this.a.add(localay);
      return;
    }
    if (this.d == null)
      this.d = new ArrayList();
    this.d.add(localay);
  }

  final aq d()
  {
    if (this.g == null)
      this.g = new aq();
    return this.g;
  }

  final void e()
  {
    int i = 0;
    int j = this.b.size();
    for (int k = 0; k < j; k++)
      ((ay)this.b.get(k)).a();
    int m = this.a.size();
    for (int n = 0; n < m; n++)
      ((ay)this.a.get(n)).a();
    if (this.d != null)
    {
      int i1 = this.d.size();
      while (i < i1)
      {
        ((ay)this.d.get(i)).a();
        i++;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ar
 * JD-Core Version:    0.6.0
 */