package com.clilystudio.app.netbook.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.app.netbook.model.Game;

final class I
  implements View.OnClickListener
{
  I(GameLayoutFragment.LayoutAdapter paramLayoutAdapter)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a.startActivity(GameDetailActivity.a(this.a.a.getActivity(), GameLayoutFragment.b(this.a.a).get_id()));
    b.a(this.a.a.getActivity(), "game_center_layout_promotion", GameLayoutFragment.b(this.a.a).getName());
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.I
 * JD-Core Version:    0.6.2
 */