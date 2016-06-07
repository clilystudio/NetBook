package butterknife;

import android.view.View;
import java.util.AbstractList;
import java.util.RandomAccess;

final class ImmutableViewList<T extends View> extends AbstractList<T>
  implements RandomAccess
{
  private final T[] views;

  ImmutableViewList(T[] paramArrayOfT)
  {
    this.views = paramArrayOfT;
  }

  public final boolean contains(Object paramObject)
  {
    View[] arrayOfView = this.views;
    int i = arrayOfView.length;
    for (int j = 0; ; j++)
    {
      int k = 0;
      if (j < i)
      {
        if (arrayOfView[j] != paramObject)
          continue;
        k = 1;
      }
      return k;
    }
  }

  public final T get(int paramInt)
  {
    return this.views[paramInt];
  }

  public final int size()
  {
    return this.views.length;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     butterknife.ImmutableViewList
 * JD-Core Version:    0.6.0
 */