package com.clilystudio.app.netbook.ui.game;

import android.os.AsyncTask.Status;
import android.view.View;
import com.clilystudio.app.netbook.widget.av;

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
      GameRankListFragment.a(this.a, new am(this.a, (byte)0));
      GameRankListFragment.g(this.a).b(new String[0]);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.ak
 * JD-Core Version:    0.6.2
 */