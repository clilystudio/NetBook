package com.ushaqi.zhuishushenqi.ui;

import android.content.res.AssetManager;
import com.koushikdutta.async.http.server.h;
import com.koushikdutta.async.http.server.l;
import com.koushikdutta.async.http.server.r;
import java.io.IOException;
import java.io.InputStream;

final class cn
  implements r
{
  cn(WifiActivity paramWifiActivity, String paramString1, String paramString2)
  {
  }

  public final void a(h paramh, l paraml)
  {
    try
    {
      InputStream localInputStream = this.c.getAssets().open(this.a);
      if (this.b != null)
        paraml.b(this.b);
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.cn
 * JD-Core Version:    0.6.0
 */