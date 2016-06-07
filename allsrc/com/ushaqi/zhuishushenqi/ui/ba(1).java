package com.ushaqi.zhuishushenqi.ui;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.BookAdd;

final class ba extends c<String, BookAdd>
{
  public ba(CustomSearchActivity paramCustomSearchActivity, Activity paramActivity, int paramInt)
  {
    super(paramActivity, 2131034324);
  }

  private BookAdd a(String[] paramArrayOfString)
  {
    try
    {
      BookAdd localBookAdd = b.b().f(paramArrayOfString[0], paramArrayOfString[1], paramArrayOfString[2]);
      return localBookAdd;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ba
 * JD-Core Version:    0.6.0
 */