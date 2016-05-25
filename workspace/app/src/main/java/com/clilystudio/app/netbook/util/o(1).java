package com.clilystudio.app.netbook.util;

import android.app.Activity;
import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.TocSummary;
import java.util.List;

final class o extends c<String, List<TocSummary>>
{
  private boolean a;

  public o(m paramm, Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramActivity, 2131034218, paramBoolean1);
    this.a = paramBoolean2;
  }

  private static List<TocSummary> a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      List localList = b.b().d(paramArrayOfString[0]);
      return localList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.o
 * JD-Core Version:    0.6.2
 */