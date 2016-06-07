package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class bz
  implements View.OnClickListener
{
  bz(GirlTopicListActivity paramGirlTopicListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    GirlTopicListActivity.a(this.a, true).showAsDropDown(paramView);
    GirlTopicListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bz
 * JD-Core Version:    0.6.0
 */