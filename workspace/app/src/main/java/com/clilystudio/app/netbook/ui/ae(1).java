package com.clilystudio.app.netbook.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.ui.post.BookPostTabActivity;

final class ae
  implements View.OnClickListener
{
  ae(BestReviewsFragment paramBestReviewsFragment)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = BookPostTabActivity.a(this.a.getActivity(), this.a.getArguments().getString("args_book_id"), this.a.getArguments().getString("args_book_title"));
    localIntent.putExtra("extra_tab_default_index", 1);
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ae
 * JD-Core Version:    0.6.2
 */