package com.ushaqi.zhuishushenqi.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.c;
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
    a.E(c.b + File.separator + str1 + File.separator + str2);
    LocalChapterListActivity.e(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.k
 * JD-Core Version:    0.6.0
 */