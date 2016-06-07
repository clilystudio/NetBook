package com.clilystudio.netbook.ui.game;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;

final class x
  implements View.OnClickListener
{
  x(GameGiftListActivity paramGameGiftListActivity, a parama, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    am.a(this.c, this.b);
    e.a(this.c, "已复制");
    if (GameGiftListActivity.b(this.c))
    {
      am.a(this.c, GameGiftListActivity.c(this.c).game);
      b.a(this.c, "micro_game_play_click", GameGiftListActivity.c(this.c).game.getName());
      return;
    }
    am.d(this.c, GameGiftListActivity.c(this.c).game.getAndroidPackageName());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.x
 * JD-Core Version:    0.6.0
 */