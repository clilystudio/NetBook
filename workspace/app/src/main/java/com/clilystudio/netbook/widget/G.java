package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGift;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.view.a;

final class G
  implements View.OnClickListener
{
  G(GameGiftItemView paramGameGiftItemView, a parama, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    am.a(this.c.getContext(), this.b);
    e.a((Activity)this.c.getContext(), "已复制");
    if (GameGiftItemView.b(this.c))
    {
      am.a(this.c.getContext(), GameGiftItemView.c(this.c).game);
      b.a(this.c.getContext(), "micro_game_play_click", GameGiftItemView.c(this.c).game.getName());
      return;
    }
    am.d(this.c.getContext(), GameGiftItemView.c(this.c).game.getAndroidPackageName());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.G
 * JD-Core Version:    0.6.0
 */