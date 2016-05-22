package com.clilystudio.app.netbook.ui.game;

import com.clilystudio.app.netbook.am_CommonUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.app.netbook.model.Game;
import com.clilystudio.app.netbook.model.GameGift;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.view.a;

final class x
  implements View.OnClickListener
{
  x(GameGiftListActivity paramGameGiftListActivity, a parama, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    am_CommonUtils.a(this.c, this.b);
    e.a(this.c, "已复制");
    if (GameGiftListActivity.b(this.c))
    {
      am_CommonUtils.a(this.c, GameGiftListActivity.c(this.c).game);
      b.a(this.c, "micro_game_play_click", GameGiftListActivity.c(this.c).game.getName());
      return;
    }
    am_CommonUtils.d(this.c, GameGiftListActivity.c(this.c).game.getAndroidPackageName());
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.x
 * JD-Core Version:    0.6.2
 */