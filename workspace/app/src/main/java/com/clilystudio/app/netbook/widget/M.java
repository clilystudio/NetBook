package com.clilystudio.app.netbook.widget;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.Game;
import com.clilystudio.app.netbook.ui.game.GameDetailActivity;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.M
 * JD-Core Version:    0.6.2
 */