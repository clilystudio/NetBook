package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

public class RecyclerViewAccessibilityDelegate extends AccessibilityDelegateCompat
{
  final RecyclerView a;
  final AccessibilityDelegateCompat b = new az(this);

  public RecyclerViewAccessibilityDelegate(RecyclerView paramRecyclerView)
  {
    this.a = paramRecyclerView;
  }

  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(RecyclerView.class.getName());
    if (((paramView instanceof RecyclerView)) && (!this.a.g()))
    {
      RecyclerView localRecyclerView = (RecyclerView)paramView;
      if (localRecyclerView.b() != null)
        localRecyclerView.b().a(paramAccessibilityEvent);
    }
  }

  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setClassName(RecyclerView.class.getName());
    if ((!this.a.g()) && (this.a.b() != null))
    {
      ao localao = this.a.b();
      ar localar = localao.c.a;
      aw localaw = localao.c.e;
      if ((ViewCompat.canScrollVertically(localao.c, -1)) || (ViewCompat.canScrollHorizontally(localao.c, -1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(8192);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      if ((ViewCompat.canScrollVertically(localao.c, 1)) || (ViewCompat.canScrollHorizontally(localao.c, 1)))
      {
        paramAccessibilityNodeInfoCompat.addAction(4096);
        paramAccessibilityNodeInfoCompat.setScrollable(true);
      }
      paramAccessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(localao.b(localar, localaw), localao.c(localar, localaw), false, 0));
    }
  }

  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    int i;
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle))
      i = 1;
    ao localao2;
    int m;
    int k;
    do
    {
      RecyclerView localRecyclerView;
      do
      {
        ao localao1;
        do
        {
          boolean bool;
          do
          {
            return i;
            bool = this.a.g();
            i = 0;
          }
          while (bool);
          localao1 = this.a.b();
          i = 0;
        }
        while (localao1 == null);
        localao2 = this.a.b();
        localRecyclerView = localao2.c;
        i = 0;
      }
      while (localRecyclerView == null);
      switch (paramInt)
      {
      default:
        m = 0;
        k = 0;
        if (k != 0)
          break label139;
        i = 0;
      case 8192:
      case 4096:
      }
    }
    while (m == 0);
    label139: localao2.c.scrollBy(m, k);
    return true;
    if (ViewCompat.canScrollVertically(localao2.c, -1));
    for (int j = -(localao2.j() - localao2.l() - localao2.n()); ; j = 0)
    {
      if (ViewCompat.canScrollHorizontally(localao2.c, -1))
      {
        int i1 = -(localao2.i() - localao2.k() - localao2.m());
        k = j;
        m = i1;
        break;
        if (!ViewCompat.canScrollVertically(localao2.c, 1))
          break label311;
      }
      label311: for (j = localao2.j() - localao2.l() - localao2.n(); ; j = 0)
      {
        if (ViewCompat.canScrollHorizontally(localao2.c, 1))
        {
          int n = localao2.i() - localao2.k() - localao2.m();
          k = j;
          m = n;
          break;
        }
        k = j;
        m = 0;
        break;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerViewAccessibilityDelegate
 * JD-Core Version:    0.6.0
 */