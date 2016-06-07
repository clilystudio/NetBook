package com.ushaqi.zhuishushenqi.ui.post;

import android.os.AsyncTask.Status;
import com.ushaqi.zhuishushenqi.widget.av;

final class dv
  implements av
{
  dv(TweetDetailActivity paramTweetDetailActivity)
  {
  }

  public final void a()
  {
    if ((TweetDetailActivity.m(this.a) == null) || (TweetDetailActivity.m(this.a).getStatus() == AsyncTask.Status.FINISHED))
      TweetDetailActivity.n(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dv
 * JD-Core Version:    0.6.0
 */