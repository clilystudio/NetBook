package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;

final class bx
  implements PopupWindow.OnDismissListener
{
  bx(GirlTopicListActivity paramGirlTopicListActivity)
  {
  }

  public final void onDismiss()
  {
    GirlTopicListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    GirlTopicListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bx
 * JD-Core Version:    0.6.0
 */