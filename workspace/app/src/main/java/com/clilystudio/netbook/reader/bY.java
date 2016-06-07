package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSummary;
import java.util.List;

final class bY extends e<String, Void, List<TocSummary>>
{
  private bY(ReaderResourceFragment paramReaderResourceFragment)
  {
  }

  private static List<TocSummary> a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      List localList = b.b().d(paramArrayOfString[0]);
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
 * Qualified Name:     com.clilystudio.netbook.reader.bY
 * JD-Core Version:    0.6.0
 */