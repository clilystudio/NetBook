package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask.Status;
import com.clilystudio.netbook.widget.av;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.cz
 * JD-Core Version:    0.6.0
 */