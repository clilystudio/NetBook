package com.ushaqi.zhuishushenqi.ui.post;

import android.os.AsyncTask.Status;
import com.ushaqi.zhuishushenqi.widget.av;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bo
 * JD-Core Version:    0.6.0
 */