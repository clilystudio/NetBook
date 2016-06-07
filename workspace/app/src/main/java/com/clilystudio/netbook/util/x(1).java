package com.clilystudio.netbook.util;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class x
  implements View.OnClickListener
{
  x(DialogUtil.GenderIntroDialog paramGenderIntroDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    i.a().c(new r(2));
    com.umeng.a.b.a(paramView.getContext(), "book_recommend_gender_click", "female");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.x
 * JD-Core Version:    0.6.0
 */