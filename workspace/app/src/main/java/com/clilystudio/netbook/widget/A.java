package com.clilystudio.netbook.widget;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.model.Game;
import java.io.File;

final class A
  implements View.OnClickListener
{
  private A(GameDownloadButton paramGameDownloadButton)
  {
  }

  public final void onClick(View paramView)
  {
    if (a.a(this.a.getContext(), new File(Uri.parse(GameDownloadButton.a(this.a).getLocalFileUri()).getPath())))
    {
      GameDownloadButton.b(this.a);
      return;
    }
    GameDownloadButton.a(this.a).setDownloadStatus(0);
    this.a.a(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.A
 * JD-Core Version:    0.6.0
 */