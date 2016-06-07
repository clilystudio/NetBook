package com.clilystudio.netbook.ui;

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
    com.clilystudio.netbook.util.e.a(this.b, "开始下载");
    String str = a.N(this.a);
    AdWebViewActivity.a(this.b, this.a, str);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.e
 * JD-Core Version:    0.6.0
 */