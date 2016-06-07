package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask.Status;
import android.support.design.widget.am;
import android.view.View;
import com.handmark.pulltorefresh.library.j;

final class dg
  implements j
{
  dg(ReviewListActivity paramReviewListActivity)
  {
  }

  public final void a()
  {
    if ((ReviewListActivity.f(this.a) == null) || (ReviewListActivity.f(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      ReviewListActivity.s(this.a).setVisibility(0);
      if (!am.a(ReviewListActivity.j(this.a)))
        ReviewListActivity.j(this.a).cancel(true);
      ReviewListActivity.a(this.a, new do(this.a, 0));
      do localdo = ReviewListActivity.f(this.a);
      String[] arrayOfString = new String[3];
      arrayOfString[0] = ReviewListActivity.g(this.a);
      arrayOfString[1] = ReviewListActivity.h(this.a);
      arrayOfString[2] = ReviewListActivity.i(this.a);
      localdo.b(arrayOfString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dg
 * JD-Core Version:    0.6.0
 */