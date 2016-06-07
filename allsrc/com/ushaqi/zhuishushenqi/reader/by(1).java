package com.ushaqi.zhuishushenqi.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.model.AppItem;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;
import com.ushaqi.zhuishushenqi.util.y;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.by
 * JD-Core Version:    0.6.0
 */