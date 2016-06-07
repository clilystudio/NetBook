package com.clilystudio.netbook.ui.game;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.GameLayoutRoot.ModuleLayout.ActivityItem;
import com.clilystudio.netbook.util.InsideLinkIntent;
import java.util.List;

final class aa
  implements View.OnClickListener
{
  aa(Z paramZ, GameLayoutRoot.ModuleLayout.ActivityItem paramActivityItem)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      if ((GameMicroFragment.e(this.b.i.a) != null) && (GameMicroFragment.e(this.b.i.a).indexOf(this.a.getBannerImage()) >= 0))
        b.a(this.b.i.a.getActivity(), "micro_game_banner_click", "Banner " + GameMicroFragment.e(this.b.i.a).indexOf(this.a.getBannerImage()));
      InsideLinkIntent localInsideLinkIntent = new InsideLinkIntent(this.b.i.a.getActivity(), this.a.getLink(), true);
      this.b.i.a.startActivity(localInsideLinkIntent);
      return;
    }
    catch (UnImplementException localUnImplementException)
    {
      localUnImplementException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.aa
 * JD-Core Version:    0.6.0
 */