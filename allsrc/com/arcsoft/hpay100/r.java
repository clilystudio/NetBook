package com.arcsoft.hpay100;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;

final class r
  implements TextWatcher
{
  r(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str = paramEditable.toString().trim();
    a.b("dalongTest", "yzm:" + str);
    if (TextUtils.isEmpty(str))
      HPaySdkActivity.v(this.a).setEnabled(false);
    while (true)
    {
      HPaySdkActivity.k(this.a).setText("");
      HPaySdkActivity.a(this.a, HPaySdkActivity.l(this.a), true);
      return;
      HPaySdkActivity.v(this.a).setEnabled(true);
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.r
 * JD-Core Version:    0.6.0
 */