package com.ushaqi.zhuishushenqi.ui.user;

import android.annotation.TargetApi;
import com.ushaqi.zhuishushenqi.widget.ScrollLoadListView;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.X
 * JD-Core Version:    0.6.0
 */