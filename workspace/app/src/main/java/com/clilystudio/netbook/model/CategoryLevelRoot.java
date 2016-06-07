package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot
  implements Serializable
{
  private CategoryLevelRoot.CategoryLevel[] female;
  private CategoryLevelRoot.CategoryLevel[] male;
  private boolean ok;

  public CategoryLevelRoot.CategoryLevel[] getFemale()
  {
    return this.female;
  }

  public CategoryLevelRoot.CategoryLevel[] getMale()
  {
    return this.male;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setFemale(CategoryLevelRoot.CategoryLevel[] paramArrayOfCategoryLevel)
  {
    this.female = paramArrayOfCategoryLevel;
  }

  public void setMale(CategoryLevelRoot.CategoryLevel[] paramArrayOfCategoryLevel)
  {
    this.male = paramArrayOfCategoryLevel;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.CategoryLevelRoot
 * JD-Core Version:    0.6.0
 */