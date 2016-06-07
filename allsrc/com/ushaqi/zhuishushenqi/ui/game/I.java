package com.ushaqi.zhuishushenqi.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.model.Game;

final class I
  implements View.OnClickListener
{
  I(GameLayoutFragment.LayoutAdapter paramLayoutAdapter)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a.startActivity(GameDetailActivity.a(this.a.a.getActivity(), GameLayoutFragment.b(this.a.a).get_id()));
    b.a(this.a.a.getActivity(), "game_center_layout_promotion", GameLayoutFragment.b(this.a.a).getName());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.I
 * JD-Core Version:    0.6.0
 */