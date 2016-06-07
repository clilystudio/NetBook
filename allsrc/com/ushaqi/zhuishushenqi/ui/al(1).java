package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.CategoryRoot;

final class al extends e<String, Void, CategoryRoot>
{
  private al(BookCategoryActivity paramBookCategoryActivity)
  {
  }

  private CategoryRoot a()
  {
    try
    {
      CategoryRoot localCategoryRoot = b.b().e();
      return localCategoryRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.al
 * JD-Core Version:    0.6.0
 */