package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookInfo;
import java.io.IOException;

final class aI extends e<String, Void, BookInfo>
{
  private aI(BookInfoActivity paramBookInfoActivity)
  {
  }

  private BookInfo a(String[] paramArrayOfString)
  {
    try
    {
      BookInfo localBookInfo = b.b().r(paramArrayOfString[0]);
      return localBookInfo;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.aI
 * JD-Core Version:    0.6.0
 */