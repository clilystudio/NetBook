package com.clilystudio.app.netbook.util;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.ResultStatus;
import java.io.IOException;

final class P extends e<String, Void, ResultStatus>
{
  private P(N paramN)
  {
  }

  private static ResultStatus a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      ResultStatus localResultStatus = b.b().y(paramArrayOfString[0], paramArrayOfString[1]);
      return localResultStatus;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.P
 * JD-Core Version:    0.6.2
 */