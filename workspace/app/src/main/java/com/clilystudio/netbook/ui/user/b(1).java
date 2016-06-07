package com.clilystudio.netbook.ui.user;

import android.view.View;
import android.view.View.OnClickListener;
import cn.sharesdk.tencent.qzone.QZone;

final class b
  implements View.OnClickListener
{
  b(AuthLoginActivity paramAuthLoginActivity)
  {
  }

  public final void onClick(View paramView)
  {
    AuthLoginActivity.a(this.a, paramView);
    AuthLoginActivity.a(this.a, QZone.NAME);
    AuthLoginActivity.b(this.a, "QQ");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.b
 * JD-Core Version:    0.6.0
 */