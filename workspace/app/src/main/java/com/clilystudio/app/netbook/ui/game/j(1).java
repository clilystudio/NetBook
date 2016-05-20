package com.clilystudio.app.netbook.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

final class j
  implements View.OnClickListener
{
  j(GameDetailActivity paramGameDetailActivity, TextView paramTextView)
  {
  }

  public final void onClick(View paramView)
  {
    GameDetailActivity.i(this.b).findViewById(2131493085).setVisibility(0);
    this.a.setText("加载中...");
    GameDetailActivity.g(this.b);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.j
 * JD-Core Version:    0.6.2
 */