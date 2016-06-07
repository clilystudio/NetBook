package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.util.e;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.a
 * JD-Core Version:    0.6.0
 */