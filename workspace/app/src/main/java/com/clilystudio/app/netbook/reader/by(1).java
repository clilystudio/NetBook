package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.app.netbook.model.AppItem;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.util.y;

final class by
  implements DialogInterface.OnClickListener
{
  by(ReaderMenuFragment.DownLoadDialogFragment paramDownLoadDialogFragment, String paramString1, String paramString2)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ReaderMenuFragment.DownLoadDialogFragment.a(this.c).buildDrawingCache();
    AppItem localAppItem = new AppItem();
    localAppItem.setName(this.a);
    localAppItem.setDownload_link(this.b);
    new y(this.c.getActivity(), localAppItem).a();
    b.a(this.c.getActivity(), "app_recommend_click", this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.by
 * JD-Core Version:    0.6.2
 */