package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.util.e;

final class cA
  implements View.OnClickListener
{
  cA(ReviewActivity paramReviewActivity, Author paramAuthor)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.startActivity(e.a(this.b, this.a));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.cA
 * JD-Core Version:    0.6.0
 */