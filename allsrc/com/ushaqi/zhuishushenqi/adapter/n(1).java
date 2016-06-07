package com.ushaqi.zhuishushenqi.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.GameGiftGroup;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.n
 * JD-Core Version:    0.6.0
 */