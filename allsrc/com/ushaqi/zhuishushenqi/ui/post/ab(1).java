package com.ushaqi.zhuishushenqi.ui.post;

import android.os.AsyncTask.Status;
import com.ushaqi.zhuishushenqi.widget.av;

final class ab
  implements av
{
  ab(BookHelpActivity paramBookHelpActivity)
  {
  }

  public final void a()
  {
    if ((BookHelpActivity.h(this.a) == null) || (BookHelpActivity.h(this.a).getStatus() == AsyncTask.Status.FINISHED))
      BookHelpActivity.b(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.ab
 * JD-Core Version:    0.6.0
 */