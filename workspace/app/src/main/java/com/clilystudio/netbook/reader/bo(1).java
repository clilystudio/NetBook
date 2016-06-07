package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayBalance;
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
 * Qualified Name:     com.clilystudio.netbook.reader.bo
 * JD-Core Version:    0.6.0
 */