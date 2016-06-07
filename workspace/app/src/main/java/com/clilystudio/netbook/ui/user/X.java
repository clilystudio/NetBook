package com.clilystudio.netbook.ui.user;

import android.annotation.TargetApi;
import com.clilystudio.netbook.widget.ScrollLoadListView;

final class X
  implements Runnable
{
  X(W paramW)
  {
  }

  @TargetApi(11)
  public final void run()
  {
    PayConsumeActivity.a(this.a.b.a).smoothScrollToPositionFromTop(this.a.a, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.X
 * JD-Core Version:    0.6.0
 */