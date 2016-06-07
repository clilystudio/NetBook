package com.clilystudio.netbook.widget;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.ui.game.GameDetailActivity;

final class M
  implements View.OnClickListener
{
  M(GameLayoutItemView paramGameLayoutItemView, Game paramGame)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.getContext().startActivity(GameDetailActivity.a(this.b.getContext(), this.a.get_id()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.M
 * JD-Core Version:    0.6.0
 */