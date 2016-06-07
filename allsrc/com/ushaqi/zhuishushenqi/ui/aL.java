package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookRankDetailRoot;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aL
 * JD-Core Version:    0.6.0
 */