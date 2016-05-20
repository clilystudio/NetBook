package com.clilystudio.app.netbook.util;

import android.app.Activity;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.db.DownloadItem;
import com.clilystudio.app.netbook.model.AppItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g
{
  private final List<AppItem> a;
  private final Activity b;

  public g(Activity paramActivity, List<AppItem> paramList)
  {
    this.b = paramActivity;
    this.a = paramList;
  }

  public final List<AppItem> a()
  {
    List localList = this.a;
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      AppItem localAppItem = (AppItem)localIterator.next();
      String str = localAppItem.getPackageName();
      if (DownloadItem.existsInDb(str))
        localArrayList1.add(localAppItem);
      else if (!a.j(this.b, str))
        localArrayList1.add(localAppItem);
    }
    ArrayList localArrayList2 = new ArrayList(localArrayList1);
    if (!localArrayList2.isEmpty())
      return localArrayList2.subList(0, Math.min(2, localArrayList2.size()));
    return new ArrayList();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.g
 * JD-Core Version:    0.6.2
 */