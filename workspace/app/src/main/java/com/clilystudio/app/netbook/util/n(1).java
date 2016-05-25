package com.clilystudio.app.netbook.util;

import android.app.Activity;

import com.clilystudio.app.netbook.*;
import com.clilystudio.app.netbook.model.TocSource;
import com.clilystudio.app.netbook.model.TocSourceRoot;

final class n extends com.clilystudio.app.netbook.a_packA.a_BaseTocSourceRoot
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
          j = 7;
        else if ("leidian".equals(str))
          j = 8;
        else if ("easou".equals(str))
          j = 3;
        else
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
      MyApplication.a_getInstance().a(j);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.n
 * JD-Core Version:    0.6.2
 */