package com.ushaqi.zhuishushenqi.ui.post;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class al
  implements View.OnClickListener
{
  al(BookHelpListActivity paramBookHelpListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    BookHelpListActivity.a(this.a, true).showAsDropDown(paramView);
    BookHelpListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.al
 * JD-Core Version:    0.6.0
 */