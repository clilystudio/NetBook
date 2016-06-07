package android.support.v7.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;

public final class aq
{
  private SparseArray<ArrayList<ay>> a = new SparseArray();
  private SparseIntArray b = new SparseIntArray();
  private int c = 0;

  public final ay a(int paramInt)
  {
    ArrayList localArrayList = (ArrayList)this.a.get(paramInt);
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      int i = -1 + localArrayList.size();
      ay localay = (ay)localArrayList.get(i);
      localArrayList.remove(i);
      return localay;
    }
    return null;
  }

  final void a()
  {
    this.c = (1 + this.c);
  }

  final void a(ah paramah1, ah paramah2, boolean paramBoolean)
  {
    if (paramah1 != null)
      b();
    if ((!paramBoolean) && (this.c == 0))
      this.a.clear();
    if (paramah2 != null)
      a();
  }

  public final void a(ay paramay)
  {
    int i = paramay.e;
    ArrayList localArrayList = (ArrayList)this.a.get(i);
    if (localArrayList == null)
    {
      localArrayList = new ArrayList();
      this.a.put(i, localArrayList);
      if (this.b.indexOfKey(i) < 0)
        this.b.put(i, 5);
    }
    if (this.b.get(i) <= localArrayList.size())
      return;
    paramay.o();
    localArrayList.add(paramay);
  }

  final void b()
  {
    this.c = (-1 + this.c);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aq
 * JD-Core Version:    0.6.0
 */