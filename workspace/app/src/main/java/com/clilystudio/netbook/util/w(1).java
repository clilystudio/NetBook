package com.clilystudio.netbook.util;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.r;

final class w
  implements View.OnClickListener
{
  w(DialogUtil.GenderIntroDialog paramGenderIntroDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    i.a().c(new r(1));
    com.umeng.a.b.a(paramView.getContext(), "book_recommend_gender_click", "male");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.w
 * JD-Core Version:    0.6.0
 */