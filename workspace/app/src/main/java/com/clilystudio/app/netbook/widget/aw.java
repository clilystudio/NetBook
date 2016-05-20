package com.clilystudio.app.netbook.widget;

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
    while (SearchEditText.b(this.a) == null)
      return;
    SearchEditText.b(this.a).a();
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.aw
 * JD-Core Version:    0.6.2
 */