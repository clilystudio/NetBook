package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import android.view.View;

import com.clilystudio.app.netbook.model.Game;

final class U
  implements View.OnClickListener
{
  U(T paramT, Game paramGame)
  {
  }

  public final void onClick(View paramView)
  {
    am_CommonUtils.b_loadWebGame(this.b.a, this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.U
 * JD-Core Version:    0.6.2
 */