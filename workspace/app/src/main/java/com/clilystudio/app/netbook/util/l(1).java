package com.clilystudio.app.netbook.util;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;

final class l extends e<String, Void, ResultStatus>
{
  private l(k paramk)
  {
  }

  private static ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      ResultStatus localResultStatus = b.b().n(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
      return localResultStatus;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.l
 * JD-Core Version:    0.6.2
 */