package com.arcsoft.hpay100;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.arcsoft.hpay100.config.HPaySMS;
import com.arcsoft.hpay100.config.a;

final class i
  implements DialogInterface.OnClickListener
{
  i(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (HPaySdkActivity.o(this.a) != null)
    {
      z localz = new z();
      localz.a(3);
      localz.c(HPaySdkActivity.o(this.a).mOrderidAPP);
      localz.c = HPaySdkActivity.o(this.a).mPayName;
      localz.d(HPaySdkActivity.o(this.a).mAmount);
      localz.e(HPaySdkActivity.o(this.a).mRealAmount);
      localz.d = HPaySdkActivity.o(this.a).mPayId;
      localz.c(HPaySdkActivity.o(this.a).mScheme);
      localz.e = HPaySdkActivity.o(this.a).mCodeType;
      if (HPaySdkActivity.a != null)
        HPaySdkActivity.a.a(localz);
      this.a.finish();
      a.a(this.a.getApplicationContext(), HPaySdkActivity.o(this.a).mOrderidAPP, HPaySdkActivity.o(this.a).mOrderidHR, HPaySdkActivity.o(this.a).mChType, HPaySdkActivity.o(this.a).mChID, HPaySdkActivity.o(this.a).mScheme, HPaySdkActivity.o(this.a).mPayId, HPaySdkActivity.o(this.a).mAmount, "1", "", 5);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.i
 * JD-Core Version:    0.6.0
 */