package com.ushaqi.zhuishushenqi.ui.game;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.model.GameGift;
import com.ushaqi.zhuishushenqi.util.e;
import com.ushaqi.zhuishushenqi.view.a;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.x
 * JD-Core Version:    0.6.0
 */