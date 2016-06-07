package com.ushaqi.zhuishushenqi.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Tweet;

final class I
  implements View.OnClickListener
{
  I(G paramG, Tweet paramTweet)
  {
  }

  public final void onClick(View paramView)
  {
    Tweet localTweet = this.a;
    if (this.a.isRetween())
      localTweet = this.a.getRefTweet();
    G.b(this.b, localTweet);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.I
 * JD-Core Version:    0.6.0
 */