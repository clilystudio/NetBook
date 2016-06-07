package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.clilystudio.netbook.model.GamePostRoot.GamePost;

final class p
  implements View.OnClickListener
{
  p(n paramn, TextView paramTextView, GamePostRoot.GamePost paramGamePost, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    GameDetailActivity.a(this.d.a, paramView, this.a, this.b.getLikeCount(), this.c);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.p
 * JD-Core Version:    0.6.0
 */