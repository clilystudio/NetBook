package com.ushaqi.zhuishushenqi.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Game;

final class V
  implements View.OnClickListener
{
  V(T paramT, Game paramGame)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.a.startActivity(GameDetailActivity.a(this.b.a, this.a.get_id(), true, true));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.V
 * JD-Core Version:    0.6.0
 */