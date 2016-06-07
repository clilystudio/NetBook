package com.ushaqi.zhuishushenqi.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Review;

final class aD
  implements DialogInterface.OnClickListener
{
  aD(BookReviewListFragment paramBookReviewListFragment, Review paramReview)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BookReviewListFragment.a(this.b, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aD
 * JD-Core Version:    0.6.0
 */