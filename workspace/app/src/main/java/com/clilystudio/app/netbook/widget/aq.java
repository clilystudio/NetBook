package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.view.MenuInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.koushikdutta.async.http.a;
import com.clilystudio.app.netbook.ui.post.AbsPostActivity;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.aq
 * JD-Core Version:    0.6.2
 */