package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;

final class cd
  implements View.OnClickListener
{
  cd(OtherUserActivity paramOtherUserActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if ((OtherUserActivity.g(this.a) == null) && (OtherUserActivity.h(this.a) != 0))
    {
      if (OtherUserActivity.i(this.a) != null)
        OtherUserActivity.i(this.a).cancel(true);
      OtherUserActivity.a(this.a, new ck(this.a, new ce(this)));
      ck localck = OtherUserActivity.i(this.a);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = OtherUserActivity.k(this.a);
      localck.b(arrayOfString);
      return;
    }
    OtherUserActivity.j(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cd
 * JD-Core Version:    0.6.2
 */