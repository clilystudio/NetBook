package android.support.design.widget;

import android.view.View;
import android.view.ViewGroup.OnHierarchyChangeListener;
import com.xiaomi.mistatistic.sdk.a.r;

final class s
  implements ViewGroup.OnHierarchyChangeListener
{
  s(CoordinatorLayout paramCoordinatorLayout)
  {
  }

  public final void onChildViewAdded(View paramView1, View paramView2)
  {
    if (CoordinatorLayout.a(this.a) != null)
      CoordinatorLayout.a(this.a).onChildViewAdded(paramView1, paramView2);
  }

  public final void onChildViewRemoved(View paramView1, View paramView2)
  {
    CoordinatorLayout localCoordinatorLayout = this.a;
    int i = localCoordinatorLayout.getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = localCoordinatorLayout.getChildAt(j);
      r localr = ((t)localView.getLayoutParams()).a;
      if ((localr == null) || (!localr.d(localCoordinatorLayout, localView, paramView2)))
        continue;
      localr.b(localCoordinatorLayout, localView, paramView2);
    }
    if (CoordinatorLayout.a(this.a) != null)
      CoordinatorLayout.a(this.a).onChildViewRemoved(paramView1, paramView2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.s
 * JD-Core Version:    0.6.0
 */