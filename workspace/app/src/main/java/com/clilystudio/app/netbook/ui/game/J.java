package com.clilystudio.app.netbook.ui.game;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.GameGroupItem;
import com.clilystudio.app.netbook.model.GameLayoutRoot.ModuleLayout;

final class J
  implements View.OnClickListener
{
  J(GameLayoutFragment.LayoutAdapter paramLayoutAdapter, GameLayoutRoot.ModuleLayout paramModuleLayout)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.b.a.getActivity(), GameListActivity.class);
    localIntent.putExtra("game_list_title", this.a.getGameGroup().getName());
    localIntent.putExtra("game_list_id", this.a.getGameGroup().get_id());
    this.b.a.startActivity(localIntent);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.J
 * JD-Core Version:    0.6.2
 */