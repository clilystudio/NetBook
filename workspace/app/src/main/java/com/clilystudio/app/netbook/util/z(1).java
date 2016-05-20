package com.clilystudio.app.netbook.util;

import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.AppItem;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.z
 * JD-Core Version:    0.6.2
 */