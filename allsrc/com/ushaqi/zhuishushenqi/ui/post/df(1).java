package com.ushaqi.zhuishushenqi.ui.post;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class df
  implements View.OnClickListener
{
  df(ReviewListActivity paramReviewListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ReviewListActivity.a(this.a, 1).showAsDropDown(paramView, 0, 1);
    ReviewListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837722));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.df
 * JD-Core Version:    0.6.0
 */