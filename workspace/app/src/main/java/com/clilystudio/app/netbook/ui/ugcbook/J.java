package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.clilystudio.app.netbook.model.BookSummary;
import java.util.Map;

final class J
  implements DialogInterface.OnClickListener
{
  J(UGCGuideEditBooksActivity paramUGCGuideEditBooksActivity, BookSummary paramBookSummary, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.c.a.put(this.a.getId(), this.b.getText().toString());
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.J
 * JD-Core Version:    0.6.2
 */