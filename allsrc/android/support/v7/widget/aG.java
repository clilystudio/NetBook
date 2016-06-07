package android.support.v7.widget;

import android.view.View;
import android.view.View.OnFocusChangeListener;

final class aG
  implements View.OnFocusChangeListener
{
  aG(SearchView paramSearchView)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (SearchView.c(this.a) != null)
      SearchView.c(this.a).onFocusChange(this.a, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aG
 * JD-Core Version:    0.6.0
 */