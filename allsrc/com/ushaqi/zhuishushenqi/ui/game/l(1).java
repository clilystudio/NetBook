package com.ushaqi.zhuishushenqi.ui.game;

import android.os.AsyncTask.Status;
import com.ushaqi.zhuishushenqi.widget.av;

final class l
  implements av
{
  l(GameDetailActivity paramGameDetailActivity)
  {
  }

  public final void a()
  {
    if ((GameDetailActivity.n(this.a) == null) || (GameDetailActivity.n(this.a).getStatus() == AsyncTask.Status.FINISHED))
      GameDetailActivity.g(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.l
 * JD-Core Version:    0.6.0
 */