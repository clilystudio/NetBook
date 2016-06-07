package com.clilystudio.netbook.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.GameGiftGroup;

final class n
  implements View.OnClickListener
{
  n(GameGiftGroupAdapter paramGameGiftGroupAdapter, GameGiftGroup paramGameGiftGroup)
  {
  }

  public final void onClick(View paramView)
  {
    GameGiftGroupAdapter.a(this.b, this.a.getGame());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.n
 * JD-Core Version:    0.6.0
 */