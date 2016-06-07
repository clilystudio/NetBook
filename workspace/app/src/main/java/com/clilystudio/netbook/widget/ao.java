package com.clilystudio.netbook.widget;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class ao
  implements View.OnClickListener
{
  ao(PostHeader paramPostHeader)
  {
  }

  public final void onClick(View paramView)
  {
    Context localContext = this.a.getContext();
    if ((localContext instanceof AbsPostActivity))
    {
      AbsPostActivity localAbsPostActivity = (AbsPostActivity)localContext;
      new cb(localAbsPostActivity, new ap(this, localAbsPostActivity)).a().show();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.ao
 * JD-Core Version:    0.6.0
 */