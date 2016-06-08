package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.MenuAd;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bz
 * JD-Core Version:    0.6.0
 */