package com.clilystudio.app.netbook.ui;

import android.content.Intent;
import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.umeng.a.b;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;

final class ce
  implements View.OnClickListener
{
  ce(ShareRemoveAdActivity paramShareRemoveAdActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (am_CommonUtils.e() == null)
      this.a.startActivity(AuthLoginActivity.a(this.a));
    while (true)
    {
      String str = this.a.getIntent().getStringExtra("entrance_type");
      b.a(this.a, "share_remove_btn_click", str);
      return;
      ShareRemoveAdActivity.a(this.a);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ce
 * JD-Core Version:    0.6.2
 */