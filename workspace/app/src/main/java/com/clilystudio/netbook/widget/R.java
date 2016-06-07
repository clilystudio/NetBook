package com.clilystudio.netbook.widget;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.model.GiftGame;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.R
 * JD-Core Version:    0.6.0
 */