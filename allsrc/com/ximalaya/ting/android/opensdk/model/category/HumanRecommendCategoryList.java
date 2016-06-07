package com.ximalaya.ting.android.opensdk.model.category;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class HumanRecommendCategoryList extends XimalayaResponse
{
  private List<HumanRecommendCategory> categories;

  public List<HumanRecommendCategory> getCategories()
  {
    return this.categories;
  }

  public void setCategories(List<HumanRecommendCategory> paramList)
  {
    this.categories = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.category.HumanRecommendCategoryList
 * JD-Core Version:    0.6.0
 */