package com.ushaqi.zhuishushenqi.reader;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.MenuAd;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bz
 * JD-Core Version:    0.6.0
 */