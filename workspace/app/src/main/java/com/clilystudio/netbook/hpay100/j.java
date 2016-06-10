package com.clilystudio.netbook.hpay100;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.config.a;

final class j
  implements DialogInterface.OnClickListener
{
  j(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (HPaySdkActivity.h(this.a) == null)
    {
      z localz1 = new z();
      localz1.a(3);
      localz1.c(HPaySdkActivity.e(this.a));
      localz1.c = HPaySdkActivity.i(this.a);
      localz1.d(HPaySdkActivity.g(this.a));
      localz1.e(HPaySdkActivity.g(this.a));
      localz1.d = HPaySdkActivity.f(this.a);
      localz1.c(HPaySdkActivity.a());
      localz1.e = HPaySdkActivity.s(this.a);
      if (HPaySdkActivity.a != null)
        HPaySdkActivity.a.a(localz1);
      this.a.finish();
      a.a(this.a.getApplicationContext(), HPaySdkActivity.e(this.a), "", "", "", HPaySdkActivity.a(), HPaySdkActivity.f(this.a), HPaySdkActivity.g(this.a), "1", "", 5);
      return;
    }
    z localz2 = new z();
    localz2.a(3);
    localz2.c(HPaySdkActivity.h(this.a).mOrderidAPP);
    localz2.c = HPaySdkActivity.h(this.a).mPayName;
    localz2.d(HPaySdkActivity.h(this.a).mAmount);
    localz2.e(HPaySdkActivity.h(this.a).mRealAmount);
    localz2.d = HPaySdkActivity.h(this.a).mPayId;
    localz2.c(HPaySdkActivity.h(this.a).mScheme);
    if (HPaySdkActivity.a != null)
      HPaySdkActivity.a.a(localz2);
    this.a.finish();
    a.a(this.a.getApplicationContext(), HPaySdkActivity.h(this.a).mOrderidAPP, HPaySdkActivity.h(this.a).mOrderidHR, HPaySdkActivity.h(this.a).mChType, HPaySdkActivity.h(this.a).mChID, HPaySdkActivity.h(this.a).mScheme, HPaySdkActivity.h(this.a).mPayId, HPaySdkActivity.h(this.a).mAmount, "1", "", 5);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.j
 * JD-Core Version:    0.6.0
 */