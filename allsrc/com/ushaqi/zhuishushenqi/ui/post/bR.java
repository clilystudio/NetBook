package com.ushaqi.zhuishushenqi.ui.post;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.User;

final class bR
  implements View.OnClickListener
{
  bR(MyTweetFragment paramMyTweetFragment)
  {
  }

  public final void onClick(View paramView)
  {
    if ((MyTweetFragment.j(this.a) == null) && (MyTweetFragment.k(this.a) != 0))
    {
      if (MyTweetFragment.l(this.a) != null)
        MyTweetFragment.l(this.a).cancel(true);
      MyTweetFragment.a(this.a, new bV(this.a, new bS(this)));
      bV localbV = MyTweetFragment.l(this.a);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = am.e().getUser().getId();
      localbV.b(arrayOfString);
      return;
    }
    MyTweetFragment.m(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bR
 * JD-Core Version:    0.6.0
 */