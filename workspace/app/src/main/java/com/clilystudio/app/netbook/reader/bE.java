package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bE
 * JD-Core Version:    0.6.2
 */