package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.BookInfo;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.aI
 * JD-Core Version:    0.6.2
 */