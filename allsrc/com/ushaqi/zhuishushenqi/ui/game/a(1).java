package com.ushaqi.zhuishushenqi.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.model.GameCat;

final class a
  implements AdapterView.OnItemClickListener
{
  a(GameCatListFragment paramGameCatListFragment)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - GameCatListFragment.a(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < GameCatListFragment.b(this.a).getCount()))
    {
      GameCat localGameCat = (GameCat)GameCatListFragment.b(this.a).getItem(i);
      Intent localIntent = GameListActivity.a(this.a.getActivity(), localGameCat);
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.a
 * JD-Core Version:    0.6.0
 */