package com.clilystudio.netbook.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.BookReview;
import com.clilystudio.netbook.util.e;

final class i
  implements View.OnClickListener
{
  i(h paramh, BookReview paramBookReview)
  {
  }

  public final void onClick(View paramView)
  {
    paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.author));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.i
 * JD-Core Version:    0.6.0
 */