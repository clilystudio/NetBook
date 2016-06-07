package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookHelpList;

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
 * Qualified Name:     com.clilystudio.netbook.ui.post.av
 * JD-Core Version:    0.6.0
 */