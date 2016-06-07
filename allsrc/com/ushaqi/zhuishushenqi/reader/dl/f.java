package com.ushaqi.zhuishushenqi.reader.dl;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TocSourceRoot;

final class f extends e<String, Void, TocSourceRoot>
{
  private f(BookDownloadService paramBookDownloadService)
  {
  }

  private static TocSourceRoot a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      TocSourceRoot localTocSourceRoot = b.b().g(paramArrayOfString[0]);
      return localTocSourceRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.dl.f
 * JD-Core Version:    0.6.0
 */