package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.Intent;
import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;

final class ac
  implements View.OnClickListener
{
  ac(UGCMainActivity paramUGCMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (am_CommonUtils.1this.a) != null)
    {
      b.a(this.a, "ugc_create");
      Intent localIntent = new Intent(this.a, UGCGuideAddCollectionActivity.class);
      this.a.startActivity(localIntent);
      UGCMainActivity.h(this.a);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.ac
 * JD-Core Version:    0.6.2
 */