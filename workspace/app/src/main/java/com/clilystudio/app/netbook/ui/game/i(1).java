package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.util.am_CommonUtils;
import android.view.View;

import com.umeng.a.b;

final class i
  implements View.OnClickListener
{
  i(GameDetailActivity paramGameDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (GameDetailActivity.h(this.a))
      b.a(this.a, "micro_game_continue_click", GameDetailActivity.e(this.a).getName());
    while (true)
    {
      am_CommonUtils.a_isSameString(this.a, GameDetailActivity.e(this.a));
      return;
      b.a(this.a, "micro_game_play_click", GameDetailActivity.e(this.a).getName());
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.i
 * JD-Core Version:    0.6.2
 */