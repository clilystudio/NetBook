package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookHelpList;

final class av extends e<String, Void, BookHelpList>
{
  private av(BookHelpListActivity paramBookHelpListActivity)
  {
  }

  private BookHelpList a(String[] paramArrayOfString)
  {
    try
    {
      BookHelpList localBookHelpList = b.b().a(paramArrayOfString[0], paramArrayOfString[1], 0, 20, BookHelpListActivity.n(this.a));
      return localBookHelpList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.av
 * JD-Core Version:    0.6.0
 */