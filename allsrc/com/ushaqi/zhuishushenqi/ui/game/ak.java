package com.ushaqi.zhuishushenqi.ui.game;

import android.os.AsyncTask.Status;
import android.view.View;
import com.ushaqi.zhuishushenqi.widget.av;

final class ak
  implements av
{
  ak(GameRankListFragment paramGameRankListFragment)
  {
  }

  public final void a()
  {
    if ((GameRankListFragment.g(this.a) == null) || (GameRankListFragment.g(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      GameRankListFragment.d(this.a).setVisibility(0);
      GameRankListFragment.a(this.a, new am(this.a, 0));
      GameRankListFragment.g(this.a).b(new String[0]);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.ak
 * JD-Core Version:    0.6.0
 */