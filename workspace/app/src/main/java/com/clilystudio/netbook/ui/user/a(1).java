package com.clilystudio.netbook.ui.user;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.a
 * JD-Core Version:    0.6.0
 */