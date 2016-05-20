package com.clilystudio.app.netbook.ui.post;

import android.os.AsyncTask.Status;
import com.clilystudio.app.netbook.widget.av;

final class cz
  implements av
{
  cz(ReviewActivity paramReviewActivity)
  {
  }

  public final void a()
  {
    if ((ReviewActivity.i(this.a) == null) || (ReviewActivity.i(this.a).getStatus() == AsyncTask.Status.FINISHED))
      ReviewActivity.b(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cz
 * JD-Core Version:    0.6.2
 */