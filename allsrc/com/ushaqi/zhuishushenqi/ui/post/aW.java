package com.ushaqi.zhuishushenqi.ui.post;

import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;

final class aW
  implements PopupWindow.OnDismissListener
{
  aW(CommonPostListActivity paramCommonPostListActivity)
  {
  }

  public final void onDismiss()
  {
    CommonPostListActivity.l(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    CommonPostListActivity.m(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aW
 * JD-Core Version:    0.6.0
 */