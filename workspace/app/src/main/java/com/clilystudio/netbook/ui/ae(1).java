package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ae
 * JD-Core Version:    0.6.0
 */