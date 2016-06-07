package com.ushaqi.zhuishushenqi.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Tweet;

final class J
  implements View.OnClickListener
{
  J(G paramG, Tweet paramTweet)
  {
  }

  public final void onClick(View paramView)
  {
    Tweet localTweet = this.a;
    if (this.a.isRetween())
      localTweet = this.a.getRefTweet();
    G.c(this.b, localTweet);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.J
 * JD-Core Version:    0.6.0
 */