package com.ushaqi.zhuishushenqi.util;

import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.AppItem;
import java.io.IOException;

final class z
  implements Runnable
{
  z(y paramy, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      b.a();
      b.b().B(this.b.a.get_id(), this.a);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.z
 * JD-Core Version:    0.6.0
 */