package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.squareup.a.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.x;
import com.clilystudio.netbook.model.BookRankSummary;

final class f
  implements View.OnClickListener
{
  f(BookRankAdapter paramBookRankAdapter, BookRankSummary paramBookRankSummary, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    i.a().c(new x(this.a, BookRankAdapter.a(this.c, this.b)));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.f
 * JD-Core Version:    0.6.0
 */