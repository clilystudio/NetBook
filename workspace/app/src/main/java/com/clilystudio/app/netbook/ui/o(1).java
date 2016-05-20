package com.clilystudio.app.netbook.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.util.as;
import com.clilystudio.app.netbook.util.e;

final class o
  implements View.OnClickListener
{
  o(n paramn, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    if (AudioBookPlayActivity.b(this.b.a) == null)
    {
      e.a(this.b.a, "播放器出错了");
      return;
    }
    if (this.a != AudioBookPlayActivity.k(this.b.a))
    {
      AudioBookPlayActivity.d(this.b.a, true);
      AudioBookPlayActivity.b(this.b.a, this.a);
      AudioBookPlayActivity.c(this.b.a, AudioBookPlayActivity.k(this.b.a));
    }
    while (true)
    {
      this.b.notifyDataSetChanged();
      return;
      if (as.c())
        as.h();
      else
        AudioBookPlayActivity.b(this.b.a).d();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.o
 * JD-Core Version:    0.6.2
 */