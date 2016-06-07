package android.support.v7.internal.widget;

import android.util.SparseArray;
import android.view.View;

class a
{
  private final SparseArray<View> a = new SparseArray();

  a(AbsSpinnerCompat paramAbsSpinnerCompat)
  {
  }

  final View a(int paramInt)
  {
    View localView = (View)this.a.get(paramInt);
    if (localView != null)
      this.a.delete(paramInt);
    return localView;
  }

  final void a()
  {
    SparseArray localSparseArray = this.a;
    int i = localSparseArray.size();
    for (int j = 0; j < i; j++)
    {
      View localView = (View)localSparseArray.valueAt(j);
      if (localView == null)
        continue;
      AbsSpinnerCompat.a(this.b, localView, true);
    }
    localSparseArray.clear();
  }

  public final void a(int paramInt, View paramView)
  {
    this.a.put(paramInt, paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.a
 * JD-Core Version:    0.6.0
 */