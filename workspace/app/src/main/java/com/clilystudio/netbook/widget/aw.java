package com.clilystudio.netbook.widget;

import android.text.Editable;
import android.text.TextWatcher;

final class aw
  implements TextWatcher
{
  aw(SearchEditText paramSearchEditText)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (SearchEditText.a(this.a))
      SearchEditText.a(this.a, false);
    do
      return;
    while (SearchEditText.b(this.a) == null);
    SearchEditText.b(this.a).a();
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.aw
 * JD-Core Version:    0.6.0
 */