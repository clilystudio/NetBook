package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ushaqi.zhuishushenqi.model.BookSummary;
import java.util.List;

final class M
  implements DialogInterface.OnClickListener
{
  M(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, List paramList, BookSummary paramBookSummary)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.remove(this.b);
    UGCGuideEditBooksActivity.c(this.c);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.M
 * JD-Core Version:    0.6.0
 */