package com.ushaqi.zhuishushenqi.ui.game;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class Y
  implements View.OnClickListener
{
  Y(GameMicroFragment.LayoutAdapter paramLayoutAdapter)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a.a.getActivity(), GameLocalListActivity.class);
    this.a.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.Y
 * JD-Core Version:    0.6.0
 */