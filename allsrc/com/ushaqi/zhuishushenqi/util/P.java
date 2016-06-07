package com.ushaqi.zhuishushenqi.util;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.ResultStatus;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.P
 * JD-Core Version:    0.6.0
 */