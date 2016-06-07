package com.clilystudio.netbook.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.arcsoft.hpay100.a.a;

final class bK
  implements TextWatcher
{
  bK(SearchActivity paramSearchActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    SearchActivity localSearchActivity = this.a;
    if (!a.Q(paramEditable.toString()));
    for (boolean bool = true; ; bool = false)
    {
      SearchActivity.a(localSearchActivity, bool);
      return;
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SearchActivity.b(this.a, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bK
 * JD-Core Version:    0.6.0
 */