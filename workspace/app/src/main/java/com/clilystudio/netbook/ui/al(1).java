package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.CategoryRoot;

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
 * Qualified Name:     com.clilystudio.netbook.ui.al
 * JD-Core Version:    0.6.0
 */