package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;

final class bG
  implements View.OnClickListener
{
  bG(SearchActivity paramSearchActivity)
  {
  }

  public final void onClick(View paramView)
  {
    SearchActivity.d(this.a);
    b.a(this.a, "search_history_clear");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bG
 * JD-Core Version:    0.6.0
 */