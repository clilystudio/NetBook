package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.app.netbook.util.e;

final class a
  implements DialogInterface.OnClickListener
{
  a(AbsDownloadButton paramAbsDownloadButton)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    e.a((Activity)this.a.getContext(), "开始下载...");
    this.a.b();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.a
 * JD-Core Version:    0.6.2
 */