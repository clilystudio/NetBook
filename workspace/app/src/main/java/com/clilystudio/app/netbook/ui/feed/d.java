package com.clilystudio.app.netbook.ui.feed;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class d
  implements View.OnClickListener
{
  d(FeedIntroActivity paramFeedIntroActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, FeedListActivity.class);
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.feed.d
 * JD-Core Version:    0.6.2
 */