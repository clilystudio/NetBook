package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Author;
import com.ushaqi.zhuishushenqi.util.e;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cA
 * JD-Core Version:    0.6.0
 */