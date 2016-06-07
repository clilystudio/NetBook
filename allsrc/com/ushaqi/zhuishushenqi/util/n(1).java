package com.ushaqi.zhuishushenqi.util;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.MyApplication;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.model.TocSource;
import com.ushaqi.zhuishushenqi.model.TocSourceRoot;

final class n extends com.ushaqi.zhuishushenqi.a.a
{
  public n(m paramm, Activity paramActivity, boolean paramBoolean)
  {
    super(paramActivity, paramBoolean);
  }

  protected final void a()
  {
    e.a(m.a(this.a), "获取资源站失败，请重试");
  }

  protected final void a(TocSourceRoot paramTocSourceRoot)
  {
    if (b() == null)
      return;
    TocSource[] arrayOfTocSource = paramTocSourceRoot.getSources();
    int i = arrayOfTocSource.length;
    int j = 5;
    int k = 0;
    if (k < i)
    {
      TocSource localTocSource = arrayOfTocSource[k];
      com.arcsoft.hpay100.a.a.a(localTocSource, m.b(this.a));
      String str;
      if (localTocSource.isPriority())
      {
        str = localTocSource.getSource();
        if (!"soso".equals(str))
          break label81;
        j = 6;
      }
      while (true)
      {
        k++;
        break;
        label81: if ("sogou".equals(str))
        {
          j = 7;
          continue;
        }
        if ("leidian".equals(str))
        {
          j = 8;
          continue;
        }
        if ("easou".equals(str))
        {
          j = 3;
          continue;
        }
        j = -1;
      }
    }
    if (m.c(this.a) != null)
    {
      m.c(this.a).setReadMode(j);
      m.c(this.a).save();
    }
    while (true)
    {
      m.a(this.a, j);
      return;
      MyApplication.a().a(j);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.n
 * JD-Core Version:    0.6.0
 */