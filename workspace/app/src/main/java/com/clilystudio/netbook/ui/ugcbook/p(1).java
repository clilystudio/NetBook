package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils.TruncateAt;
import android.widget.ImageButton;
import android.widget.TextView;

final class p
  implements Runnable
{
  p(UGCDetailActivity paramUGCDetailActivity)
  {
  }

  public final void run()
  {
    if (UGCDetailActivity.d(this.a).getLineCount() > 5)
    {
      UGCDetailActivity.e(this.a).setVisibility(0);
      UGCDetailActivity.d(this.a).setEllipsize(TextUtils.TruncateAt.END);
      UGCDetailActivity.d(this.a).setClickable(true);
      UGCDetailActivity.d(this.a).setOnClickListener(UGCDetailActivity.l(this.a));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.p
 * JD-Core Version:    0.6.0
 */