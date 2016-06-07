package com.ximalaya.ting.android.opensdk.model.category;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class CategoryList extends XimalayaResponse
{
  private List<Category> categories;

  public List<Category> getCategories()
  {
    return this.categories;
  }

  public void setCategories(List<Category> paramList)
  {
    this.categories = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.category.CategoryList
 * JD-Core Version:    0.6.0
 */