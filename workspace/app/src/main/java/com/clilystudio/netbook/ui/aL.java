package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import java.io.IOException;

final class aL extends e<String, Void, BookRankDetailRoot>
{
  private aL(BookRankDetailActivity paramBookRankDetailActivity)
  {
  }

  private BookRankDetailRoot a(String[] paramArrayOfString)
  {
    try
    {
      BookRankDetailRoot localBookRankDetailRoot = b.b().z(paramArrayOfString[0]);
      return localBookRankDetailRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.aL
 * JD-Core Version:    0.6.0
 */