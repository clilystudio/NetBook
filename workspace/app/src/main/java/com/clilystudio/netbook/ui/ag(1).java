package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.ui.post.ReviewActivity;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ag
 * JD-Core Version:    0.6.0
 */