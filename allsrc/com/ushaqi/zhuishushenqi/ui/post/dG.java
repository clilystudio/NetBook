package com.ushaqi.zhuishushenqi.ui.post;

import android.os.AsyncTask.Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;
import com.ushaqi.zhuishushenqi.model.Tweet;
import java.util.List;

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
      if (!am.a(TweetHotFragment.k(this.a)))
        TweetHotFragment.k(this.a).cancel(true);
      TweetHotFragment.a(this.a, new dH(this.a, 0));
      int i = TweetHotFragment.e(this.a).size();
      String str = null;
      if (i > 0)
        str = ((Tweet)TweetHotFragment.e(this.a).get(-1 + TweetHotFragment.e(this.a).size())).get_id();
      TweetHotFragment.b(this.a).b(new String[] { str });
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dG
 * JD-Core Version:    0.6.0
 */