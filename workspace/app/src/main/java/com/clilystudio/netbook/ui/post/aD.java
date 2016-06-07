package com.clilystudio.netbook.ui.post;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.model.Review;

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
 * Qualified Name:     com.clilystudio.netbook.ui.post.aD
 * JD-Core Version:    0.6.0
 */