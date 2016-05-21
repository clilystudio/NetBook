package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.Intent;
import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.app.netbook.ui.user.UserUGCActivity;

final class ad
  implements View.OnClickListener
{
  ad(UGCMainActivity paramUGCMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (am_CommonUtils.1this.a) != null)
    {
      b.a(this.a, "ugc_my_own");
      Intent localIntent = new Intent(this.a, UserUGCActivity.class);
      this.a.startActivity(localIntent);
      UGCMainActivity.h(this.a);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.ad
 * JD-Core Version:    0.6.2
 */