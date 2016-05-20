package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.GiftGame;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.view.a;

final class W
  implements View.OnClickListener
{
  W(GiftGameGiftButton paramGiftGameGiftButton, a parama, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    am.a(this.c.getContext(), this.b);
    e.a((Activity)this.c.getContext(), "已复制");
    if (GiftGameGiftButton.b(this.c) != null)
    {
      am.d(this.c.getContext(), GiftGameGiftButton.b(this.c).getAndroidPackageName());
      return;
    }
    e.a((Activity)this.c.getContext(), "启动游戏失败");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.W
 * JD-Core Version:    0.6.2
 */