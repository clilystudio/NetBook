package com.ushaqi.zhuishushenqi.ui.post;

import android.os.AsyncTask.Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;
import com.ushaqi.zhuishushenqi.model.Tweet;
import java.util.List;

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
      if (!am.a(MyTweetFragment.w(this.a)))
        MyTweetFragment.w(this.a).cancel(true);
      MyTweetFragment.a(this.a, new bW(this.a, 0));
      int i = MyTweetFragment.q(this.a).size();
      String str = null;
      if (i > 0)
        str = ((Tweet)MyTweetFragment.q(this.a).get(-1 + MyTweetFragment.q(this.a).size())).get_id();
      MyTweetFragment.b(this.a).b(new String[] { str });
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bT
 * JD-Core Version:    0.6.0
 */