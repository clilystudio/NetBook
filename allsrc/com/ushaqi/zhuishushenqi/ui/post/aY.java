package com.ushaqi.zhuishushenqi.ui.post;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.PopupWindow;

final class aY
  implements View.OnClickListener
{
  aY(CommonPostListActivity paramCommonPostListActivity, ImageView paramImageView)
  {
  }

  public final void onClick(View paramView)
  {
    CommonPostListActivity.a(this.b, 0).showAsDropDown(paramView, 0, 1);
    this.a.setImageDrawable(this.b.getResources().getDrawable(2130837722));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aY
 * JD-Core Version:    0.6.0
 */