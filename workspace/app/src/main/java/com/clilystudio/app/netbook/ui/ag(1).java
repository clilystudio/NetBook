package com.clilystudio.app.netbook.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.BookReview;
import com.clilystudio.app.netbook.ui.post.ReviewActivity;

final class ag
  implements View.OnClickListener
{
  ag(BestReviewsFragment paramBestReviewsFragment, BookReview paramBookReview)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.b.getActivity(), ReviewActivity.class);
    localIntent.putExtra("extraReviewId", this.a._id);
    this.b.startActivity(localIntent);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ag
 * JD-Core Version:    0.6.2
 */