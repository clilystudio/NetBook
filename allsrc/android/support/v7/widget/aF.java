package android.support.v7.widget;

import android.support.v4.widget.CursorAdapter;

final class aF
  implements Runnable
{
  aF(SearchView paramSearchView)
  {
  }

  public final void run()
  {
    if ((SearchView.b(this.a) != null) && ((SearchView.b(this.a) instanceof aS)))
      SearchView.b(this.a).changeCursor(null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aF
 * JD-Core Version:    0.6.0
 */