package com.ushaqi.zhuishushenqi.ui;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.co
 * JD-Core Version:    0.6.0
 */