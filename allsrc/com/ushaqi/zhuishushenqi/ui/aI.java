package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookInfo;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aI
 * JD-Core Version:    0.6.0
 */