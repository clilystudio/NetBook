package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.handmark.pulltorefresh.library.j;

final class dM
  implements j
{
  dM(TweetListFragment paramTweetListFragment)
  {
  }

  public final void a()
  {
    if ((TweetListFragment.b(this.a) == null) || (TweetListFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      TweetListFragment.k(this.a).setVisibility(0);
      if (!am_CommonUtils.a_isTaskStoped(TweetListFragment.l(this.a)))
        TweetListFragment.l(this.a).cancel(true);
      TweetListFragment.a(this.a, new dN(this.a, (byte)0));
      TweetListFragment.b(this.a).b(new String[] { "50bff3ec209793513100001c", "updated" });
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dM
 * JD-Core Version:    0.6.2
 */