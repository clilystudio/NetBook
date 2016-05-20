package com.clilystudio.app.netbook.ui.post;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.util.am_CommonUtils;

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
      arrayOfString[0] = am_CommonUtils.e().getUser().getId();
      localbU.b(arrayOfString);
      return;
    }
    MyTweetFragment.i(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bP
 * JD-Core Version:    0.6.2
 */