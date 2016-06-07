package com.activeandroid.widget;

import android.content.Context;
import android.widget.ArrayAdapter;
import com.activeandroid.Model;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class ModelAdapter<T extends Model> extends ArrayAdapter<T>
{
  public ModelAdapter(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }

  public ModelAdapter(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext, paramInt1, paramInt2);
  }

  public ModelAdapter(Context paramContext, int paramInt1, int paramInt2, List<T> paramList)
  {
    super(paramContext, paramInt1, paramInt2, paramList);
  }

  public ModelAdapter(Context paramContext, int paramInt, List<T> paramList)
  {
    super(paramContext, paramInt, paramList);
  }

  public long getItemId(int paramInt)
  {
    Model localModel = (Model)getItem(paramInt);
    if (localModel != null)
      return localModel.getId().longValue();
    return -1L;
  }

  public void setData(Collection<? extends T> paramCollection)
  {
    clear();
    if (paramCollection != null)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        add((Model)localIterator.next());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.widget.ModelAdapter
 * JD-Core Version:    0.6.0
 */