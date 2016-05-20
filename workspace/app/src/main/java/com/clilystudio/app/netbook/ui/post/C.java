package com.clilystudio.app.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class C
  implements DialogInterface.OnClickListener
{
  C(AddReviewActivity paramAddReviewActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AddReviewActivity.c(this.a);
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.C
 * JD-Core Version:    0.6.2
 */