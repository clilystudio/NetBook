package com.ushaqi.zhuishushenqi.ui.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import com.ushaqi.zhuishushenqi.pay.weixin.a;
import com.ushaqi.zhuishushenqi.util.e;

final class ay
  implements DialogInterface.OnClickListener
{
  ay(UserFollowWeixinActivity paramUserFollowWeixinActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!a.a(this.a))
    {
      e.a(this.a, 2131034303);
      return;
    }
    Intent localIntent = this.a.getPackageManager().getLaunchIntentForPackage("com.tencent.mm");
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.ay
 * JD-Core Version:    0.6.0
 */