package com.clilystudio.app.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class s
  implements DialogInterface.OnClickListener
{
  s(AddGamePostActivity paramAddGamePostActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.s
 * JD-Core Version:    0.6.2
 */