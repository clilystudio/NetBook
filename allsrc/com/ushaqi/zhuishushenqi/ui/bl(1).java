package com.ushaqi.zhuishushenqi.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.util.A;
import com.ushaqi.zhuishushenqi.util.e;

final class bl
  implements DialogInterface.OnClickListener
{
  bl(MhdListActivity paramMhdListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    e.a(this.a, "开始下载...");
    new A(this.a).a();
    b.a(this.a, "mhd_download_click");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bl
 * JD-Core Version:    0.6.0
 */