package com.clilystudio.app.netbook.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.arcsoft.hpay100.a.a;

final class e
  implements DialogInterface.OnClickListener
{
  e(AdWebViewActivity paramAdWebViewActivity, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.clilystudio.app.netbook.util.e.a(this.b, "开始下载");
    String str = a.N(this.a);
    AdWebViewActivity.a(this.b, this.a, str);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.e
 * JD-Core Version:    0.6.2
 */