package com.clilystudio.app.netbook.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.app.netbook.exception.UnImplementException;
import com.clilystudio.app.netbook.model.GameLayoutRoot.ModuleLayout.ActivityItem;
import com.clilystudio.app.netbook.util.InsideLinkIntent;

final class L
  implements View.OnClickListener
{
  L(K paramK, GameLayoutRoot.ModuleLayout.ActivityItem paramActivityItem)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      InsideLinkIntent localInsideLinkIntent = new InsideLinkIntent(this.b.i.a.getActivity(), this.a.getLink());
      this.b.i.a.startActivity(localInsideLinkIntent);
      b.a(this.b.i.a.getActivity(), "game_center_layout_banner", this.a.getLink());
      return;
    }
    catch (UnImplementException localUnImplementException)
    {
      localUnImplementException.printStackTrace();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.L
 * JD-Core Version:    0.6.2
 */