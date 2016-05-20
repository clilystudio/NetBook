package com.clilystudio.app.netbook.adapter;

import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.List;

public abstract class u<T> extends BaseAdapter
{
  private List<T> a = new ArrayList();

  public void a(List<T> paramList)
  {
    if (paramList == null)
      return;
    this.a = paramList;
    notifyDataSetChanged();
  }

  public void a(T[] paramArrayOfT)
  {
    if (paramArrayOfT == null)
      return;
    int i = paramArrayOfT.length;
    for (int j = 0; j < i; j++)
    {
      T ? = paramArrayOfT[j];
      this.a.add(?);
    }
    notifyDataSetChanged();
  }

  public final List<T> f()
  {
    return this.a;
  }

  public int getCount()
  {
    return this.a.size();
  }

  public T getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.u
 * JD-Core Version:    0.6.2
 */