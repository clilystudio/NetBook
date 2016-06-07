package android.support.v7.widget;

import android.support.v4.util.ArrayMap;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

public final class aw
{
  ArrayMap<ay, an> a = new ArrayMap();
  ArrayMap<ay, an> b = new ArrayMap();
  ArrayMap<Long, ay> c = new ArrayMap();
  final List<View> d = new ArrayList();
  int e = 0;
  private int f = -1;
  private int g = 0;
  private int h = 0;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private boolean l = false;

  final void a(ay paramay)
  {
    this.a.remove(paramay);
    this.b.remove(paramay);
    ArrayMap localArrayMap;
    if (this.c != null)
      localArrayMap = this.c;
    for (int m = -1 + localArrayMap.size(); ; m--)
    {
      if (m >= 0)
      {
        if (paramay != localArrayMap.valueAt(m))
          continue;
        localArrayMap.removeAt(m);
      }
      this.d.remove(paramay.a);
      return;
    }
  }

  final void a(View paramView)
  {
    this.d.remove(paramView);
  }

  public final boolean a()
  {
    return this.j;
  }

  final void b(View paramView)
  {
    if (!this.d.contains(paramView))
      this.d.add(paramView);
  }

  public final boolean b()
  {
    return this.l;
  }

  public final boolean c()
  {
    return this.f != -1;
  }

  public final int d()
  {
    if (this.j)
      return this.g - this.h;
    return this.e;
  }

  public final String toString()
  {
    return "State{mTargetPosition=" + this.f + ", mPreLayoutHolderMap=" + this.a + ", mPostLayoutHolderMap=" + this.b + ", mData=" + null + ", mItemCount=" + this.e + ", mPreviousLayoutItemCount=" + this.g + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.h + ", mStructureChanged=" + this.i + ", mInPreLayout=" + this.j + ", mRunSimpleAnimations=" + this.k + ", mRunPredictiveAnimations=" + this.l + '}';
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aw
 * JD-Core Version:    0.6.0
 */