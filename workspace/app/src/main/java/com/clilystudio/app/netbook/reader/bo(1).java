package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PayBalance;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bo
 * JD-Core Version:    0.6.2
 */