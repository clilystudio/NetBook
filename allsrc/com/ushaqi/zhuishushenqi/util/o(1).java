package com.ushaqi.zhuishushenqi.util;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.TocSummary;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.o
 * JD-Core Version:    0.6.0
 */