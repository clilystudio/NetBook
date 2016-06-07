package com.ushaqi.zhuishushenqi.ui.feed;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

final class i
  implements View.OnClickListener
{
  i(FeedSettingActivity paramFeedSettingActivity, AlertDialog paramAlertDialog, int paramInt1, int paramInt2)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    if (this.b != this.c)
      FeedSettingActivity.b(this.d, this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.feed.i
 * JD-Core Version:    0.6.0
 */