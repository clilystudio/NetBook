package com.arcsoft.hpay100;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.widget.EditText;
import com.arcsoft.hpay100.c.b;
import com.arcsoft.hpay100.config.j;

final class t
  implements j
{
  private t(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void a()
  {
    String str = b.a(this.a.getApplicationContext(), null);
    if ((!TextUtils.isEmpty(str)) && (HPaySdkActivity.a() == 1) && (!HPaySdkActivity.m(this.a)) && (HPaySdkActivity.n(this.a) != null))
      HPaySdkActivity.n(this.a).setText(str);
    try
    {
      HPaySdkActivity.n(this.a).setFocusableInTouchMode(true);
      HPaySdkActivity.n(this.a).requestFocus();
      Editable localEditable = HPaySdkActivity.n(this.a).getText();
      if ((localEditable instanceof Spannable))
        Selection.setSelection((Spannable)localEditable, localEditable.length());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.t
 * JD-Core Version:    0.6.0
 */