package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.ushaqi.zhuishushenqi.model.BookSummary;

final class K
  implements DialogInterface.OnClickListener
{
  K(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, BookSummary paramBookSummary, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.setAppendComment(this.b.getText().toString());
    UGCGuideEditBooksActivity.c(this.c);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.K
 * JD-Core Version:    0.6.0
 */