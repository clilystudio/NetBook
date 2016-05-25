package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.c_StoragePathConst;
import java.io.File;

final class k
  implements DialogInterface.OnClickListener
{
  k(LocalChapterListActivity paramLocalChapterListActivity, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    String str1 = LocalChapterListActivity.c(this.b);
    String str2 = this.a;
    a.E(c_StoragePathConst.b_Chapter + File.separator + str1 + File.separator + str2);
    LocalChapterListActivity.e(this.b);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.k
 * JD-Core Version:    0.6.2
 */