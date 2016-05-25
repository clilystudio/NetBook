package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.RelateBookRoot;
import java.io.IOException;

public final class cP extends e<String, Void, RelateBookRoot>
{
  public cP(cM paramcM)
  {
  }

  private static RelateBookRoot a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      RelateBookRoot localRelateBookRoot = b.b().V(paramArrayOfString[0]);
      return localRelateBookRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cP
 * JD-Core Version:    0.6.2
 */