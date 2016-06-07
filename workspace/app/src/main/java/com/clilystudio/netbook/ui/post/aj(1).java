package com.clilystudio.netbook.ui.post;

import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;

final class aj
  implements PopupWindow.OnDismissListener
{
  aj(BookHelpListActivity paramBookHelpListActivity)
  {
  }

  public final void onDismiss()
  {
    BookHelpListActivity.b(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
    BookHelpListActivity.c(this.a).setImageDrawable(this.a.getResources().getDrawable(2130837721));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.aj
 * JD-Core Version:    0.6.0
 */