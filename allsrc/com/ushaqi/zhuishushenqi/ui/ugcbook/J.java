package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.ushaqi.zhuishushenqi.model.BookSummary;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.J
 * JD-Core Version:    0.6.0
 */