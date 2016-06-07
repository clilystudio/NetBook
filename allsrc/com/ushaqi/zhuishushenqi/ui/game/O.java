package com.ushaqi.zhuishushenqi.ui.game;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.model.Game;
import java.util.List;

final class O
  implements AdapterView.OnItemClickListener
{
  O(GameListActivity paramGameListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Game localGame = (Game)GameListActivity.a(this.a).get(paramInt);
    Intent localIntent = GameDetailActivity.a(this.a, localGame.get_id(), GameListActivity.b(this.a), false);
    this.a.startActivity(localIntent);
    b.a(this.a, "game_pasted_item_click", localGame.getName());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.O
 * JD-Core Version:    0.6.0
 */