package com.clilystudio.app.netbook.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.GameGiftGroup;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.n
 * JD-Core Version:    0.6.2
 */