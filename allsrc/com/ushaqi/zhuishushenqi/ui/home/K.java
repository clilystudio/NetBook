package com.ushaqi.zhuishushenqi.ui.home;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.model.BookUpdate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class K extends e<Void, Void, List<BookUpdate>>
{
  private List<BookReadRecord> a;

  private K(HomeShelfFragment paramHomeShelfFragment)
  {
  }

  private List<BookUpdate> a()
  {
    this.a = BookReadRecord.getAll();
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
        localArrayList.add(((BookReadRecord)localIterator.next()).getBookId());
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return null;
    }
    b.a();
    List localList = b.b().a(localArrayList);
    return localList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.K
 * JD-Core Version:    0.6.0
 */