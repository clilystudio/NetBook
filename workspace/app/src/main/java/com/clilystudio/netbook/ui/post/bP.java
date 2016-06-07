package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;

final class bP
  implements View.OnClickListener
{
  bP(MyTweetFragment paramMyTweetFragment)
  {
  }

  public final void onClick(View paramView)
  {
    if ((MyTweetFragment.f(this.a) == null) && (MyTweetFragment.g(this.a) != 0))
    {
      if (MyTweetFragment.h(this.a) != null)
        MyTweetFragment.h(this.a).cancel(true);
      MyTweetFragment.a(this.a, new bU(this.a, new bQ(this)));
      bU localbU = MyTweetFragment.h(this.a);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = am.e().getUser().getId();
      localbU.b(arrayOfString);
      return;
    }
    MyTweetFragment.i(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bP
 * JD-Core Version:    0.6.0
 */