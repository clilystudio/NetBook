package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask.Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class aX
  implements j
{
  aX(CommonPostListActivity paramCommonPostListActivity)
  {
  }

  public final void a()
  {
    if ((CommonPostListActivity.c(this.a) == null) || (CommonPostListActivity.c(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      CommonPostListActivity.q(this.a).setVisibility(0);
      if (!am.a(CommonPostListActivity.f(this.a)))
        CommonPostListActivity.f(this.a).cancel(true);
      CommonPostListActivity.a(this.a, new bh(this.a, 0));
      bh localbh = CommonPostListActivity.c(this.a);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = CommonPostListActivity.d(this.a);
      arrayOfString[1] = CommonPostListActivity.e(this.a);
      localbh.b(arrayOfString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.aX
 * JD-Core Version:    0.6.0
 */