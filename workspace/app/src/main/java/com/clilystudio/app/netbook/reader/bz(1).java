package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.MenuAd;
import java.util.List;

final class bz extends e<Void, Void, List<MenuAd>>
{
  private bz(ReaderMenuFragment paramReaderMenuFragment)
  {
  }

  private static List<MenuAd> a()
  {
    try
    {
      b.a();
      List localList = b.b().i();
      return localList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bz
 * JD-Core Version:    0.6.2
 */