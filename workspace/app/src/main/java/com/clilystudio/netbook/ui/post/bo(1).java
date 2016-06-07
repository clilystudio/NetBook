package com.clilystudio.netbook.ui.post;

import android.os.AsyncTask.Status;
import com.clilystudio.netbook.widget.av;

final class bo
  implements av
{
  bo(GirlTopicActivity paramGirlTopicActivity)
  {
  }

  public final void a()
  {
    if ((GirlTopicActivity.k(this.a) == null) || (GirlTopicActivity.k(this.a).getStatus() == AsyncTask.Status.FINISHED))
      GirlTopicActivity.b(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bo
 * JD-Core Version:    0.6.0
 */