package com.clilystudio.app.netbook.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.Game;

final class N
  implements View.OnClickListener
{
  N(GameLayoutItemView paramGameLayoutItemView, Game paramGame)
  {
  }

  public final void onClick(View paramView)
  {
    GameLayoutItemView.a(this.b, this.b.getContext(), this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.N
 * JD-Core Version:    0.6.2
 */