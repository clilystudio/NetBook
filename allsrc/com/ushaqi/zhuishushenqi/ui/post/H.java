package com.ushaqi.zhuishushenqi.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class H
  implements DialogInterface.OnClickListener
{
  H(AddReviewRatingActivity paramAddReviewRatingActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AddReviewRatingActivity.b(this.a);
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.H
 * JD-Core Version:    0.6.0
 */