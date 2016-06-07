package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookRankRoot;
import java.io.IOException;

final class aO extends e<Void, Void, BookRankRoot>
{
  private aO(BookRankListActivity paramBookRankListActivity)
  {
  }

  private BookRankRoot a()
  {
    try
    {
      BookRankRoot localBookRankRoot = b.b().d();
      return localBookRankRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aO
 * JD-Core Version:    0.6.0
 */