package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;

public abstract class ao
{
  private boolean a = false;
  q b;
  RecyclerView c;
  private boolean d = false;

  public static int a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = 1073741824;
    int j = Math.max(0, paramInt1 - paramInt2);
    if (paramBoolean)
      if (paramInt3 < 0);
    while (true)
    {
      return View.MeasureSpec.makeMeasureSpec(paramInt3, i);
      i = 0;
      paramInt3 = 0;
      continue;
      if (paramInt3 >= 0)
        continue;
      if (paramInt3 == -1)
      {
        paramInt3 = j;
        continue;
      }
      if (paramInt3 == -2)
      {
        i = -2147483648;
        paramInt3 = j;
        continue;
      }
      i = 0;
      paramInt3 = 0;
    }
  }

  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Rect localRect = ((ap)paramView.getLayoutParams()).b;
    paramView.layout(paramInt1 + localRect.left, paramInt2 + localRect.top, paramInt3 - localRect.right, paramInt4 - localRect.bottom);
  }

  private void a(View paramView, int paramInt, boolean paramBoolean)
  {
    ay localay1 = RecyclerView.b(paramView);
    ap localap1;
    if ((paramBoolean) || (localay1.m()))
    {
      this.c.e.b(paramView);
      localap1 = (ap)paramView.getLayoutParams();
      if ((!localay1.f()) && (!localay1.d()))
        break label126;
      if (!localay1.d())
        break label118;
      localay1.e();
      label67: this.b.a(paramView, paramInt, paramView.getLayoutParams(), false);
    }
    while (true)
    {
      if (localap1.d)
      {
        localay1.a.invalidate();
        localap1.d = false;
      }
      return;
      this.c.e.a(paramView);
      break;
      label118: localay1.g();
      break label67;
      label126: if (paramView.getParent() == this.c)
      {
        q localq = this.b;
        int i = localq.a.a(paramView);
        int j;
        if (i == -1)
          j = -1;
        while (true)
        {
          if (paramInt == -1)
            paramInt = this.b.a();
          if (j != -1)
            break;
          throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.c.indexOfChild(paramView));
          if (localq.b.b(i))
          {
            j = -1;
            continue;
          }
          j = i - localq.b.d(i);
        }
        if (j == paramInt)
          continue;
        ao localao = RecyclerView.d(this.c);
        View localView = localao.b(j);
        if (localView == null)
          throw new IllegalArgumentException("Cannot move a child from non-existing index:" + j);
        localao.g(j);
        ap localap2 = (ap)localView.getLayoutParams();
        ay localay2 = RecyclerView.b(localView);
        if (localay2.m())
          localao.c.e.b(localView);
        while (true)
        {
          localao.b.a(localView, paramInt, localap2, localay2.m());
          break;
          localao.c.e.a(localView);
        }
      }
      this.b.a(paramView, paramInt, false);
      localap1.c = true;
    }
  }

  public static int b(View paramView)
  {
    return ((ap)paramView.getLayoutParams()).a.c();
  }

  public static int c(View paramView)
  {
    Rect localRect = ((ap)paramView.getLayoutParams()).b;
    return paramView.getMeasuredWidth() + localRect.left + localRect.right;
  }

  public static int d(View paramView)
  {
    Rect localRect = ((ap)paramView.getLayoutParams()).b;
    return paramView.getMeasuredHeight() + localRect.top + localRect.bottom;
  }

  public static int e(View paramView)
  {
    return ((ap)paramView.getLayoutParams()).b.top;
  }

  public static int f(View paramView)
  {
    return ((ap)paramView.getLayoutParams()).b.bottom;
  }

  private void f(int paramInt)
  {
    if (b(paramInt) != null)
      this.b.a(paramInt);
  }

  public static int g(View paramView)
  {
    return ((ap)paramView.getLayoutParams()).b.left;
  }

  private void g(int paramInt)
  {
    b(paramInt);
    this.b.d(paramInt);
  }

  public static int h(View paramView)
  {
    return ((ap)paramView.getLayoutParams()).b.right;
  }

  public int a(int paramInt, ar paramar, aw paramaw)
  {
    return 0;
  }

  public int a(aw paramaw)
  {
    return 0;
  }

  public abstract ap a();

  public ap a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new ap(paramContext, paramAttributeSet);
  }

  public ap a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ap))
      return new ap((ap)paramLayoutParams);
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new ap((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new ap(paramLayoutParams);
  }

  public View a(int paramInt)
  {
    int i = h();
    for (int j = 0; j < i; j++)
    {
      View localView = b(j);
      ay localay = RecyclerView.b(localView);
      if ((localay != null) && (localay.c() == paramInt) && (!localay.b()) && ((this.c.e.a()) || (!localay.m())))
        return localView;
    }
    return null;
  }

  public void a(int paramInt1, int paramInt2)
  {
  }

  public final void a(int paramInt, ar paramar)
  {
    View localView = b(paramInt);
    f(paramInt);
    paramar.a(localView);
  }

  public void a(Parcelable paramParcelable)
  {
  }

  final void a(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView == null)
    {
      this.c = null;
      this.b = null;
      return;
    }
    this.c = paramRecyclerView;
    this.b = paramRecyclerView.c;
  }

  public void a(RecyclerView paramRecyclerView, ar paramar)
  {
  }

  public final void a(ar paramar)
  {
    int i = -1 + h();
    if (i >= 0)
    {
      View localView = b(i);
      ay localay = RecyclerView.b(localView);
      if (!localay.b())
      {
        if ((!localay.i()) || (localay.m()) || (localay.k()))
          break label80;
        RecyclerView.f(this.c);
        f(i);
        paramar.a(localay);
      }
      while (true)
      {
        i--;
        break;
        label80: g(i);
        paramar.c(localView);
      }
    }
  }

  public void a(ar paramar, int paramInt1, int paramInt2)
  {
    RecyclerView.b(this.c, paramInt1, paramInt2);
  }

  public void a(ar paramar, aw paramaw)
  {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }

  public final void a(View paramView)
  {
    a(paramView, -1, false);
  }

  public final void a(View paramView, int paramInt)
  {
    a(paramView, paramInt, true);
  }

  final void a(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    ay localay = RecyclerView.b(paramView);
    if ((localay != null) && (!localay.m()) && (!this.b.a(localay.a)))
      b(paramView, paramAccessibilityNodeInfoCompat);
  }

  public final void a(View paramView, ar paramar)
  {
    q localq = this.b;
    int i = localq.a.a(paramView);
    if (i >= 0)
    {
      if (localq.b.c(i))
        localq.c.remove(paramView);
      localq.a.a(i);
    }
    paramar.a(paramView);
  }

  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    int i = 1;
    AccessibilityRecordCompat localAccessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
    if ((this.c == null) || (localAccessibilityRecordCompat == null))
      return;
    if ((ViewCompat.canScrollVertically(this.c, i)) || (ViewCompat.canScrollVertically(this.c, -1)) || (ViewCompat.canScrollHorizontally(this.c, -1)) || (ViewCompat.canScrollHorizontally(this.c, i)));
    while (true)
    {
      localAccessibilityRecordCompat.setScrollable(i);
      if (RecyclerView.f(this.c) == null)
        break;
      localAccessibilityRecordCompat.setItemCount(RecyclerView.f(this.c).a());
      return;
      int j = 0;
    }
  }

  public void a(String paramString)
  {
    if (this.c != null)
      this.c.a(paramString);
  }

  public boolean a(ap paramap)
  {
    return paramap != null;
  }

  public int b(int paramInt, ar paramar, aw paramaw)
  {
    return 0;
  }

  public int b(ar paramar, aw paramaw)
  {
    if ((this.c == null) || (RecyclerView.f(this.c) == null));
    do
      return 1;
    while (!d());
    return RecyclerView.f(this.c).a();
  }

  public int b(aw paramaw)
  {
    return 0;
  }

  public Parcelable b()
  {
    return null;
  }

  public final View b(int paramInt)
  {
    if (this.b != null)
      return this.b.b(paramInt);
    return null;
  }

  public void b(int paramInt1, int paramInt2)
  {
  }

  final void b(RecyclerView paramRecyclerView)
  {
    this.d = true;
  }

  final void b(RecyclerView paramRecyclerView, ar paramar)
  {
    this.d = false;
    a(paramRecyclerView, paramar);
  }

  final void b(ar paramar)
  {
    int i = paramar.a.size();
    for (int j = i - 1; j >= 0; j--)
    {
      View localView = ((ay)paramar.a.get(j)).a;
      ay localay = RecyclerView.b(localView);
      if (localay.b())
        continue;
      localay.a(false);
      if (localay.n())
        this.c.removeDetachedView(localView, false);
      if (this.c.d != null)
        this.c.d.c(localay);
      localay.a(true);
      paramar.b(localView);
    }
    paramar.a.clear();
    if (i > 0)
      this.c.invalidate();
  }

  public final void b(View paramView, int paramInt)
  {
    a(paramView, paramInt, false);
  }

  public void b(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    int i;
    if (d())
    {
      i = b(paramView);
      if (!c())
        break label45;
    }
    label45: for (int j = b(paramView); ; j = 0)
    {
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i, 1, j, 1, false, false));
      return;
      i = 0;
      break;
    }
  }

  public int c(ar paramar, aw paramaw)
  {
    if ((this.c == null) || (RecyclerView.f(this.c) == null));
    do
      return 1;
    while (!c());
    return RecyclerView.f(this.c).a();
  }

  public int c(aw paramaw)
  {
    return 0;
  }

  public View c(int paramInt, ar paramar, aw paramaw)
  {
    return null;
  }

  public void c(int paramInt)
  {
    if (this.c != null)
    {
      RecyclerView localRecyclerView = this.c;
      int i = localRecyclerView.c.a();
      for (int j = 0; j < i; j++)
        localRecyclerView.c.b(j).offsetLeftAndRight(paramInt);
    }
  }

  public void c(int paramInt1, int paramInt2)
  {
  }

  public boolean c()
  {
    return false;
  }

  public int d(aw paramaw)
  {
    return 0;
  }

  public void d(int paramInt)
  {
    if (this.c != null)
    {
      RecyclerView localRecyclerView = this.c;
      int i = localRecyclerView.c.a();
      for (int j = 0; j < i; j++)
        localRecyclerView.c.b(j).offsetTopAndBottom(paramInt);
    }
  }

  public void d(int paramInt1, int paramInt2)
  {
  }

  public boolean d()
  {
    return false;
  }

  public int e(aw paramaw)
  {
    return 0;
  }

  public void e(int paramInt)
  {
  }

  public final void e(int paramInt1, int paramInt2)
  {
    RecyclerView.c(this.c, paramInt1, paramInt2);
  }

  public int f(aw paramaw)
  {
    return 0;
  }

  public boolean f()
  {
    return false;
  }

  public final void g()
  {
    if (this.c != null)
      this.c.requestLayout();
  }

  public final int h()
  {
    if (this.b != null)
      return this.b.a();
    return 0;
  }

  public final int i()
  {
    if (this.c != null)
      return this.c.getWidth();
    return 0;
  }

  public final int j()
  {
    if (this.c != null)
      return this.c.getHeight();
    return 0;
  }

  public final int k()
  {
    if (this.c != null)
      return this.c.getPaddingLeft();
    return 0;
  }

  public final int l()
  {
    if (this.c != null)
      return this.c.getPaddingTop();
    return 0;
  }

  public final int m()
  {
    if (this.c != null)
      return this.c.getPaddingRight();
    return 0;
  }

  public final int n()
  {
    if (this.c != null)
      return this.c.getPaddingBottom();
    return 0;
  }

  public final int o()
  {
    if (this.c != null);
    for (ah localah = this.c.a(); localah != null; localah = null)
      return localah.a();
    return 0;
  }

  public void p()
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ao
 * JD-Core Version:    0.6.0
 */