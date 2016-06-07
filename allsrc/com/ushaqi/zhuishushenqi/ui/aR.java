package com.ushaqi.zhuishushenqi.ui;

import android.os.Bundle;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookRankDetailRoot;
import java.io.IOException;

final class aR extends e<String, Void, BookRankDetailRoot>
{
  private aR(BookRankListFragment paramBookRankListFragment)
  {
  }

  private BookRankDetailRoot a()
  {
    try
    {
      b.a();
      BookRankDetailRoot localBookRankDetailRoot = b.b().z(this.a.getArguments().getString("book_list_id"));
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aR
 * JD-Core Version:    0.6.0
 */