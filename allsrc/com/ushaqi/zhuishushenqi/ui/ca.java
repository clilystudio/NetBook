package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import java.io.IOException;

final class ca
  implements Runnable
{
  ca(SettingsActivity paramSettingsActivity, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      b.b().P(this.a);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ca
 * JD-Core Version:    0.6.0
 */