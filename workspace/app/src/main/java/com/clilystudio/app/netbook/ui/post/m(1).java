package com.clilystudio.app.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class m
  implements DialogInterface.OnClickListener
{
  m(AddBookHelpActivity paramAddBookHelpActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.m
 * JD-Core Version:    0.6.2
 */