package com.ushaqi.zhuishushenqi.reader;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.RelateBookRoot;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cP
 * JD-Core Version:    0.6.0
 */