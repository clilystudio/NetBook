package com.clilystudio.netbook.umeng.update.net;

import android.widget.Toast;

final class c
  implements Runnable
{
  c(DownloadingService paramDownloadingService, String paramString)
  {
  }

  public final void run()
  {
    Toast.makeText(DownloadingService.b(this.a), this.b, 0).show();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.net.c
 * JD-Core Version:    0.6.0
 */