package com.clilystudio.app.netbook.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;
import com.clilystudio.app.netbook.model.BookSummary;

final class bB
  implements View.OnClickListener
{
  bB(RelateBooksFragment paramRelateBooksFragment, BookSummary paramBookSummary)
  {
  }

  public final void onClick(View paramView)
  {
    if (RelateBooksFragment.a(this.b))
    {
      a.c(this.b.getActivity(), this.a.getId(), "rec_C6613205_93B6_61A6_9FEC_180B70F91B94");
      b.a(this.b.getActivity(), "book_info_recommend_click", "bfd");
    }
    for (int i = 3; ; i = 1)
    {
      Intent localIntent = BookInfoActivity.a(this.b.getActivity(), this.a.getId(), i);
      this.b.startActivity(localIntent);
      return;
      b.a(this.b.getActivity(), "book_info_recommend_click", "zhuishu");
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bB
 * JD-Core Version:    0.6.2
 */