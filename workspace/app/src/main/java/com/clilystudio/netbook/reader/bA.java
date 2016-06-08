package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSummary;

import java.util.List;

final class bA extends e<String, Void, List<TocSummary>>
{
  private bA(ReaderMenuFragment paramReaderMenuFragment)
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

  protected final void onPreExecute()
  {
    super.onPreExecute();
    ReaderMenuFragment.k(this.a).c();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bA
 * JD-Core Version:    0.6.0
 */