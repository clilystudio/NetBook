package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.MenuInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.koushikdutta.async.http.a;
import com.clilystudio.netbook.ui.post.AbsPostActivity;

final class aq
  implements View.OnClickListener
{
  aq(PostHeader paramPostHeader)
  {
  }

  public final void onClick(View paramView)
  {
    Context localContext = this.a.getContext();
    if ((localContext instanceof AbsPostActivity))
    {
      AbsPostActivity localAbsPostActivity = (AbsPostActivity)localContext;
      a locala = new a(localAbsPostActivity, paramView);
      locala.b().inflate(2131558403, locala.a());
      locala.a(new ar(this, localAbsPostActivity));
      locala.c();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.aq
 * JD-Core Version:    0.6.0
 */