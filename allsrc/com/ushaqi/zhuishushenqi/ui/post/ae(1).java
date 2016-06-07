package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookHelpResult;

final class ae extends e<String, Void, BookHelpResult>
{
  private ae(BookHelpActivity paramBookHelpActivity)
  {
  }

  private BookHelpResult a(String[] paramArrayOfString)
  {
    try
    {
      BookHelpResult localBookHelpResult = b.b().E(paramArrayOfString[0]);
      return localBookHelpResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.ae
 * JD-Core Version:    0.6.0
 */