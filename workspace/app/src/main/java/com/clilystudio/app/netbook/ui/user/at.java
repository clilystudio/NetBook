package com.clilystudio.app.netbook.ui.user;

import android.text.Editable;
import android.text.TextWatcher;

final class at
  implements TextWatcher
{
  at(SmsVerifyActivity paramSmsVerifyActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (paramEditable.length() > 0)
    {
      SmsVerifyActivity.a(this.a, true);
      return;
    }
    SmsVerifyActivity.a(this.a, false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.at
 * JD-Core Version:    0.6.2
 */