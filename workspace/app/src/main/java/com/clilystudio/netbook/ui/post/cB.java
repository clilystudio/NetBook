package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.Review;
import com.clilystudio.netbook.model.ReviewBook;
import com.clilystudio.netbook.ui.BookInfoActivity;

final class cB
  implements View.OnClickListener
{
  cB(ReviewActivity paramReviewActivity)
  {
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131493348:
    }
    do
      return;
    while ((ReviewActivity.h(this.a) == null) || (ReviewActivity.h(this.a).getBook() == null));
    this.a.startActivity(BookInfoActivity.a(this.a, ReviewActivity.h(this.a).getBook().get_id()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.cB
 * JD-Core Version:    0.6.0
 */