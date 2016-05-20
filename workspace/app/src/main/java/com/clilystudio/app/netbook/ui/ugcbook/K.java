package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.clilystudio.app.netbook.model.BookSummary;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.K
 * JD-Core Version:    0.6.2
 */