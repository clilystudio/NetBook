package com.ushaqi.zhuishushenqi.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.event.x;
import com.ushaqi.zhuishushenqi.model.BookRankSummary;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.f
 * JD-Core Version:    0.6.0
 */