package com.ushaqi.zhuishushenqi.ui.post;

import android.os.AsyncTask.Status;
import com.ushaqi.zhuishushenqi.widget.av;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.cr
 * JD-Core Version:    0.6.0
 */