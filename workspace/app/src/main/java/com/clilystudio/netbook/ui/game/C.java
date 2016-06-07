package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.GameGift;

final class C
  implements View.OnClickListener
{
  C(y paramy, GameGift paramGameGift)
  {
  }

  public final void onClick(View paramView)
  {
    GameGiftListActivity.a(this.b.a, this.a);
    this.b.a.b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.C
 * JD-Core Version:    0.6.0
 */