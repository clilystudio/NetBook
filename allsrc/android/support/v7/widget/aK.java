package android.support.v7.widget;

import android.support.v4.view.KeyEventCompat;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

final class aK
  implements View.OnKeyListener
{
  aK(SearchView paramSearchView)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (SearchView.o(this.a) == null);
    do
    {
      return false;
      if ((SearchView.m(this.a).isPopupShowing()) && (SearchView.m(this.a).getListSelection() != -1))
        return SearchView.a(this.a, paramView, paramInt, paramKeyEvent);
    }
    while ((SearchView.SearchAutoComplete.a(SearchView.m(this.a))) || (!KeyEventCompat.hasNoModifiers(paramKeyEvent)) || (paramKeyEvent.getAction() != 1) || (paramInt != 66));
    paramView.cancelLongPress();
    SearchView.a(this.a, 0, null, SearchView.m(this.a).getText().toString());
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aK
 * JD-Core Version:    0.6.0
 */