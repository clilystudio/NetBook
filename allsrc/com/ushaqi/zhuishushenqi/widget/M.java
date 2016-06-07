package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.ui.game.GameDetailActivity;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.M
 * JD-Core Version:    0.6.0
 */