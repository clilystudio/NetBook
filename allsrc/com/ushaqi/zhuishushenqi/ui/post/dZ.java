package com.ushaqi.zhuishushenqi.ui.post;

import android.os.AsyncTask.Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Tweet;
import com.ushaqi.zhuishushenqi.model.User;
import java.util.List;

final class dZ
  implements j
{
  dZ(TweetTimelineFragment paramTweetTimelineFragment)
  {
  }

  public final void a()
  {
    if ((TweetTimelineFragment.b(this.a) == null) || (TweetTimelineFragment.b(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      TweetTimelineFragment.j(this.a).setVisibility(0);
      if (!am.a(TweetTimelineFragment.k(this.a)))
        TweetTimelineFragment.k(this.a).cancel(true);
      TweetTimelineFragment.a(this.a, new ea(this.a, 0));
      int i = TweetTimelineFragment.h(this.a).size();
      String str = null;
      if (i > 0)
        str = ((Tweet)TweetTimelineFragment.h(this.a).get(-1 + TweetTimelineFragment.h(this.a).size())).get_id();
      ea localea = TweetTimelineFragment.b(this.a);
      String[] arrayOfString = new String[3];
      arrayOfString[0] = am.e().getToken();
      arrayOfString[1] = am.e().getUser().getId();
      arrayOfString[2] = str;
      localea.b(arrayOfString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dZ
 * JD-Core Version:    0.6.0
 */