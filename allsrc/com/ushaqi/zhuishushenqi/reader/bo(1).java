package com.ushaqi.zhuishushenqi.reader;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.PayBalance;
import java.io.IOException;

final class bo extends e<String, Void, PayBalance>
{
  private bo(ReaderActivity paramReaderActivity)
  {
  }

  private static PayBalance a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      PayBalance localPayBalance = b.b().b(paramArrayOfString[0]);
      return localPayBalance;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.bo
 * JD-Core Version:    0.6.0
 */