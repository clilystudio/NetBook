package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.app.netbook.model.Tweet;

final class dG
  implements j
{
  dG(TweetHotFragment paramTweetHotFragment)
  {
  }

  public final void a()
  {
    if ((TweetHotFragment.b(this.a) == null) || (TweetHotFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      TweetHotFragment.j(this.a).setVisibility(0);
      if (!am_CommonUtils.a_isTaskStoped(TweetHotFragment.k(this.a)))
        TweetHotFragment.k(this.a).cancel(true);
      TweetHotFragment.a(this.a, new dH(this.a, (byte)0));
      int i = TweetHotFragment.e(this.a).size();
      String str = null;
      if (i > 0)
        str = ((Tweet)TweetHotFragment.e(this.a).get(-1 + TweetHotFragment.e(this.a).size())).get_id();
      TweetHotFragment.b(this.a).b(new String[] { str });
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dG
 * JD-Core Version:    0.6.2
 */