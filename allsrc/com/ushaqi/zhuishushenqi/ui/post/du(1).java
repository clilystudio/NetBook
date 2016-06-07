package com.ushaqi.zhuishushenqi.ui.post;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.adapter.G;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Tweet;
import com.ushaqi.zhuishushenqi.model.TweetResult;
import com.ushaqi.zhuishushenqi.util.e;

final class du
  implements View.OnClickListener
{
  du(TweetDetailActivity paramTweetDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Account localAccount;
    if ((TweetDetailActivity.a(this.a)) && (TweetDetailActivity.c(this.a) != null))
    {
      localAccount = am.a(this.a);
      if (G.a(localAccount, TweetDetailActivity.c(this.a).getTweet()))
      {
        dC localdC = new dC(this.a, this.a, 2131034473);
        String[] arrayOfString = new String[2];
        arrayOfString[0] = localAccount.getToken();
        arrayOfString[1] = TweetDetailActivity.c(this.a).getTweet().get_id();
        localdC.execute(arrayOfString);
      }
    }
    else
    {
      return;
    }
    String str = this.a.getString(2131034472);
    if (G.a(TweetDetailActivity.c(this.a).getTweet(), localAccount))
      str = this.a.getString(2131034423);
    e.a(this.a, "\t\t" + str + "\t\t");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.du
 * JD-Core Version:    0.6.0
 */