package com.clilystudio.app.netbook.ui.post;

import android.os.AsyncTask.Status;
import com.clilystudio.app.netbook.widget.av;

final class cr
  implements av
{
  cr(PostDetailActivity paramPostDetailActivity)
  {
  }

  public final void a()
  {
    if ((PostDetailActivity.j(this.a) == null) || (PostDetailActivity.j(this.a).getStatus() == AsyncTask.Status.FINISHED))
      PostDetailActivity.b(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cr
 * JD-Core Version:    0.6.2
 */