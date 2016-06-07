package android.support.v7.widget;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;

final class aA
  implements Runnable
{
  aA(SearchView paramSearchView)
  {
  }

  public final void run()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)this.a.getContext().getSystemService("input_method");
    if (localInputMethodManager != null)
      SearchView.a.a(localInputMethodManager, this.a, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aA
 * JD-Core Version:    0.6.0
 */