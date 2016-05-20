package com.clilystudio.app.netbook.ui.user;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.util.e;

final class aM
  implements View.OnClickListener
{
  aM(UserTaskActivity paramUserTaskActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("market://details?id=" + this.a.getPackageName()));
    try
    {
      this.a.startActivityForResult(localIntent, 2);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      e.a(this.a, "打开应用市场失败");
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aM
 * JD-Core Version:    0.6.2
 */