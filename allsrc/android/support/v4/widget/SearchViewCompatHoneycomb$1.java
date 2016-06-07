package android.support.v4.widget;

import android.widget.SearchView.OnQueryTextListener;

final class SearchViewCompatHoneycomb$1
  implements SearchView.OnQueryTextListener
{
  public final boolean onQueryTextChange(String paramString)
  {
    return this.val$listener.onQueryTextChange(paramString);
  }

  public final boolean onQueryTextSubmit(String paramString)
  {
    return this.val$listener.onQueryTextSubmit(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SearchViewCompatHoneycomb.1
 * JD-Core Version:    0.6.0
 */