package com.clilystudio.netbook.ui.game;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.netbook.model.Game;

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
      am.a(this.a, GameDetailActivity.e(this.a));
      return;
      b.a(this.a, "micro_game_play_click", GameDetailActivity.e(this.a).getName());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.i
 * JD-Core Version:    0.6.0
 */