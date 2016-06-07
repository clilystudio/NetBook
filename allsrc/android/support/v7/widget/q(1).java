package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

final class q
{
  final s a;
  final r b;
  final List<View> c;

  q(s params)
  {
    this.a = params;
    this.b = new r();
    this.c = new ArrayList();
  }

  private int e(int paramInt)
  {
    if (paramInt < 0)
    {
      j = -1;
      return j;
    }
    int i = this.a.a();
    int j = paramInt;
    while (true)
    {
      if (j >= i)
        break label69;
      int k = paramInt - (j - this.b.d(j));
      if (k == 0)
      {
        while (this.b.b(j))
          j++;
        break;
      }
      j += k;
    }
    label69: return -1;
  }

  final int a()
  {
    return this.a.a() - this.c.size();
  }

  final void a(int paramInt)
  {
    int i = e(paramInt);
    View localView = this.a.b(i);
    if (localView == null)
      return;
    if (this.b.c(i))
      this.c.remove(localView);
    this.a.a(i);
  }

  final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0);
    for (int i = this.a.a(); ; i = e(paramInt))
    {
      this.b.a(i, paramBoolean);
      if (paramBoolean)
        this.c.add(paramView);
      this.a.a(paramView, i, paramLayoutParams);
      return;
    }
  }

  final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0);
    for (int i = this.a.a(); ; i = e(paramInt))
    {
      this.b.a(i, paramBoolean);
      if (paramBoolean)
        this.c.add(paramView);
      this.a.a(paramView, i);
      return;
    }
  }

  final void a(View paramView, boolean paramBoolean)
  {
    a(paramView, -1, true);
  }

  final boolean a(View paramView)
  {
    return this.c.contains(paramView);
  }

  final int b()
  {
    return this.a.a();
  }

  final View b(int paramInt)
  {
    int i = e(paramInt);
    return this.a.b(i);
  }

  final View c(int paramInt)
  {
    return this.a.b(paramInt);
  }

  final void d(int paramInt)
  {
    int i = e(paramInt);
    this.b.c(i);
    this.a.c(i);
  }

  public final String toString()
  {
    return this.b.toString() + ", hidden list:" + this.c.size();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.q
 * JD-Core Version:    0.6.0
 */