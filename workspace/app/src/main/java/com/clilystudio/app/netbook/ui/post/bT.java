package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.app.netbook.model.Tweet;

final class bT
  implements j
{
  bT(MyTweetFragment paramMyTweetFragment)
  {
  }

  public final void a()
  {
    if ((MyTweetFragment.b(this.a) == null) || (MyTweetFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      MyTweetFragment.v(this.a).setVisibility(0);
      if (!am_CommonUtils.a_isTaskStoped(MyTweetFragment.w(this.a)))
        MyTweetFragment.w(this.a).cancel(true);
      MyTweetFragment.a(this.a, new bW(this.a, (byte)0));
      int i = MyTweetFragment.q(this.a).size();
      String str = null;
      if (i > 0)
        str = ((Tweet)MyTweetFragment.q(this.a).get(-1 + MyTweetFragment.q(this.a).size())).get_id();
      MyTweetFragment.b(this.a).b(new String[] { str });
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bT
 * JD-Core Version:    0.6.2
 */