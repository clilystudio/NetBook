package com.clilystudio.netbook.ui;

import com.arcsoft.hpay100.a.a;
import com.koushikdutta.async.http.b.e;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import com.clilystudio.netbook.db.BookFile;
import java.io.File;

final class cm
  implements r
{
  cm(WifiActivity paramWifiActivity, BookFile paramBookFile)
  {
  }

  public final void a(com.koushikdutta.async.http.server.h paramh, l paraml)
  {
    File localFile = a.I(this.a.getName());
    if (localFile != null)
    {
      paraml.c().a().a("Content-Disposition", "attachment");
      paraml.a(localFile);
      return;
    }
    paraml.a("error");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.cm
 * JD-Core Version:    0.6.0
 */