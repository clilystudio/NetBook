package com.ushaqi.zhuishushenqi.ui;

import android.annotation.TargetApi;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.event.k;

final class aN
  implements Runnable
{
  aN(BookRankListActivity paramBookRankListActivity, k paramk)
  {
  }

  @TargetApi(11)
  public final void run()
  {
    BookRankListActivity.b(this.b).smoothScrollToPositionFromTop(this.a.a(), 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aN
 * JD-Core Version:    0.6.0
 */