package com.clilystudio.app.netbook.ui;

import android.content.res.AssetManager;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import java.io.IOException;
import java.io.InputStream;

final class co
  implements r
{
  co(WifiActivity paramWifiActivity)
  {
  }

  public final void a(h paramh, l paraml)
  {
    try
    {
      InputStream localInputStream = this.a.getAssets().open("index.html");
      paraml.a(localInputStream, localInputStream.available());
      return;
    }
    catch (IOException localIOException)
    {
      paraml.a("error!!");
      localIOException.printStackTrace();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.co
 * JD-Core Version:    0.6.2
 */