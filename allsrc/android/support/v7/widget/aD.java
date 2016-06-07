package android.support.v7.widget;

import android.text.Editable;
import android.text.TextWatcher;

final class aD
  implements TextWatcher
{
  aD(SearchView paramSearchView)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SearchView.a(this.a, paramCharSequence);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.aD
 * JD-Core Version:    0.6.0
 */