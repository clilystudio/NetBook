package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.GameGiftRoot;
import com.clilystudio.app.netbook.ui.game.GameGiftListActivity;

final class K
  implements View.OnClickListener
{
  K(GameGiftView paramGameGiftView, GameGiftRoot paramGameGiftRoot)
  {
  }

  public final void onClick(View paramView)
  {
    Activity localActivity = (Activity)this.b.getContext();
    Intent localIntent = GameGiftListActivity.a(localActivity, this.a, GameGiftView.a(this.b));
    localIntent.putExtra("title", "全部礼包");
    localActivity.startActivity(localIntent);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.K
 * JD-Core Version:    0.6.2
 */