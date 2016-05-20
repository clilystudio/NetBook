package com.clilystudio.app.netbook.adapter;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.PostComment;
import com.clilystudio.app.netbook.util.e;

final class A
  implements View.OnClickListener
{
  A(z paramz, PostComment paramPostComment)
  {
  }

  public final void onClick(View paramView)
  {
    paramView.getContext().startActivity(e.a(paramView.getContext(), this.a.getAuthor()));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.A
 * JD-Core Version:    0.6.2
 */