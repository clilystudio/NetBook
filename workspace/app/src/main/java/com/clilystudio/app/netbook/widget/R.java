package com.clilystudio.app.netbook.widget;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.model.GiftGame;
import java.io.File;

final class R
  implements View.OnClickListener
{
  private R(GiftGameGameButton paramGiftGameGameButton)
  {
  }

  public final void onClick(View paramView)
  {
    GiftGameGameButton.a(this.a);
    a.a(this.a.getContext(), new File(Uri.parse(GiftGameGameButton.b(this.a).getLocalFileUri()).getPath()));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.R
 * JD-Core Version:    0.6.2
 */