package com.clilystudio.app.netbook.ui.feed;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.squareup.a.b;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.m;

final class e
  implements View.OnClickListener
{
  e(FeedListActivity paramFeedListActivity, AlertDialog paramAlertDialog, int paramInt1, int paramInt2)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    if (this.b != this.c)
    {
      int i = a.e(this.b);
      a.b(this.d, "feed_chapter_count", i);
      i.a().c(new m());
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.feed.e
 * JD-Core Version:    0.6.2
 */