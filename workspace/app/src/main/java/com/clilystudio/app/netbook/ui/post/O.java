package com.clilystudio.app.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class O
  implements DialogInterface.OnClickListener
{
  O(AddVoteActivity paramAddVoteActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.O
 * JD-Core Version:    0.6.2
 */