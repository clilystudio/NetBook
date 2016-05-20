package com.clilystudio.app.netbook.ui.game;

import android.view.View;
import android.view.View.OnClickListener;

final class ac
  implements View.OnClickListener
{
  ac(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager, GameMicroFragment.LayoutAdapter paramLayoutAdapter, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    this.b.k.a.startActivity(GameDetailActivity.a(this.b.k.a.getActivity(), this.a, true, false));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.ac
 * JD-Core Version:    0.6.2
 */