package com.clilystudio.netbook.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.Game;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.N
 * JD-Core Version:    0.6.0
 */