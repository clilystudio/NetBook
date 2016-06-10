package com.clilystudio.netbook.hpay100;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;

import com.clilystudio.netbook.hpay100.a_Pack.a;

final class q
  implements TextWatcher
{
  q(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    a.b("dalongTest", "afterTextChanged editable:" + paramEditable.toString());
    String str = paramEditable.toString().trim();
    HPaySdkActivity.c(this.a).setText("");
    HPaySdkActivity.a(this.a, HPaySdkActivity.d(this.a), true);
    if (TextUtils.isEmpty(str))
    {
      HPaySdkActivity.q(this.a).setEnabled(false);
      return;
    }
    HPaySdkActivity.q(this.a).setEnabled(true);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.q
 * JD-Core Version:    0.6.0
 */