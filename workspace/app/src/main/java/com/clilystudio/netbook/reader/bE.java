package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;

final class bE extends e<String, Void, Object[]>
{
  private bE(ReaderMixActivity paramReaderMixActivity)
  {
  }

  private static Object[] a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      ApiService localApiService = b.b();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = localApiService.d(paramArrayOfString[0]);
      arrayOfObject[1] = localApiService.aa(paramArrayOfString[0]);
      return arrayOfObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bE
 * JD-Core Version:    0.6.0
 */