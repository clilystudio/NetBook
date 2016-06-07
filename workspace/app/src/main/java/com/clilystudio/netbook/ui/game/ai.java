package com.clilystudio.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import java.util.List;

final class ai
  implements AdapterView.OnItemClickListener
{
  ai(GameRankListFragment paramGameRankListFragment)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - GameRankListFragment.a(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < GameRankListFragment.b(this.a).size()))
    {
      Game localGame = (Game)GameRankListFragment.b(this.a).get(i);
      Intent localIntent = GameDetailActivity.a(this.a.getActivity(), localGame.get_id());
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.ai
 * JD-Core Version:    0.6.0
 */