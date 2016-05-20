package com.clilystudio.app.netbook.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.Game;

final class V
  implements View.OnClickListener
{
  V(T paramT, Game paramGame)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.a.startActivity(GameDetailActivity.a(this.b.a, this.a.get_id(), true, true));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.V
 * JD-Core Version:    0.6.2
 */