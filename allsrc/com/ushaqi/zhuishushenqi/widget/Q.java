package com.ushaqi.zhuishushenqi.widget;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.model.Game;

final class Q
  implements View.OnClickListener
{
  Q(GameMicroLayoutItemView paramGameMicroLayoutItemView, Game paramGame)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.b.a)
      b.a(this.b.getContext(), "micro_game_continue_click", this.a.getName());
    while (true)
    {
      am.a(this.b.getContext(), this.a);
      return;
      b.a(this.b.getContext(), "micro_game_play_click", this.a.getName());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.Q
 * JD-Core Version:    0.6.0
 */