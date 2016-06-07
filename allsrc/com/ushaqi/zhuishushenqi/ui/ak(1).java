package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.CategoryLevelRoot;

final class ak extends e<String, Void, CategoryLevelRoot>
{
  private ak(BookCategoryActivity paramBookCategoryActivity)
  {
  }

  private CategoryLevelRoot a()
  {
    try
    {
      CategoryLevelRoot localCategoryLevelRoot = b.b().f();
      return localCategoryLevelRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ak
 * JD-Core Version:    0.6.0
 */