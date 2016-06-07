package com.ushaqi.zhuishushenqi.ui;

import android.content.Intent;
import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity;

final class ce
  implements View.OnClickListener
{
  ce(ShareRemoveAdActivity paramShareRemoveAdActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (am.e() == null)
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ce
 * JD-Core Version:    0.6.0
 */