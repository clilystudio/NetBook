package android.support.v7.widget;

import android.view.View;
import java.util.List;

final class J
{
  boolean a = true;
  int b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h = 0;
  int i;
  List<ay> j = null;

  final View a(ar paramar)
  {
    if (this.j != null)
    {
      int k = this.j.size();
      for (int m = 0; m < k; m++)
      {
        ay localay = (ay)this.j.get(m);
        if ((localay.m()) || (this.d != localay.c()))
          continue;
        a(localay);
        return localay.a;
      }
      return null;
    }
    View localView = paramar.b(this.d);
    this.d += this.e;
    return localView;
  }

  public final void a(ay paramay)
  {
    int k = this.j.size();
    Object localObject1 = null;
    int m = 2147483647;
    int n = 0;
    Object localObject2;
    Object localObject3;
    int i2;
    if (n < k)
    {
      localObject2 = (ay)this.j.get(n);
      if ((localObject2 == paramay) || (((ay)localObject2).m()))
        break label138;
      int i3 = (((ay)localObject2).c() - this.d) * this.e;
      if ((i3 < 0) || (i3 >= m))
        break label138;
      if (i3 == 0)
        break label113;
      localObject3 = localObject2;
      i2 = i3;
    }
    while (true)
    {
      n++;
      localObject1 = localObject3;
      m = i2;
      break;
      localObject2 = localObject1;
      label113: if (localObject2 == null);
      for (int i1 = -1; ; i1 = ((ay)localObject2).c())
      {
        this.d = i1;
        return;
      }
      label138: i2 = m;
      localObject3 = localObject1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.J
 * JD-Core Version:    0.6.0
 */