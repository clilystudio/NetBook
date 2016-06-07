package com.ushaqi.zhuishushenqi.ui.user;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class aJ
  implements View.OnClickListener
{
  aJ(UserInfoActivity paramUserInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, UserFollowWeixinActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.aJ
 * JD-Core Version:    0.6.0
 */