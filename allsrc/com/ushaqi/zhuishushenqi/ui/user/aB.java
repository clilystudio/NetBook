package com.ushaqi.zhuishushenqi.ui.user;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.ui.ShareRemoveAdActivity;

final class aB
  implements View.OnClickListener
{
  aB(UserInfoActivity paramUserInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = ShareRemoveAdActivity.a(this.a, "userInfo");
    this.a.startActivity(localIntent);
    b.a(this.a, "share_remove_entrance_click", "userInfo");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.aB
 * JD-Core Version:    0.6.0
 */