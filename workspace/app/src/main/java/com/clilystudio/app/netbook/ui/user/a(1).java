package com.clilystudio.app.netbook.ui.user;

import android.view.View;
import android.view.View.OnClickListener;
import cn.sharesdk.sina.weibo.SinaWeibo;

final class a
  implements View.OnClickListener
{
  a(AuthLoginActivity paramAuthLoginActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AuthLoginActivity.a(this.a, paramView);
    AuthLoginActivity.a(this.a, SinaWeibo.NAME);
    AuthLoginActivity.b(this.a, "SinaWeibo");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.a
 * JD-Core Version:    0.6.2
 */