package com.ushaqi.zhuishushenqi.ui.ugcbook;

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
    if (am.a(this.a) != null)
    {
      b.a(this.a, "ugc_create");
      Intent localIntent = new Intent(this.a, UGCGuideAddCollectionActivity.class);
      this.a.startActivity(localIntent);
      UGCMainActivity.h(this.a);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.ac
 * JD-Core Version:    0.6.0
 */