package com.clilystudio.netbook.model;

public class CategoryRoot
{
  private CategoryRoot.Category[] female;
  private CategoryRoot.Category[] male;
  private boolean ok;

  public CategoryRoot.Category[] getFemale()
  {
    return this.female;
  }

  public CategoryRoot.Category[] getMale()
  {
    return this.male;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setFemale(CategoryRoot.Category[] paramArrayOfCategory)
  {
    this.female = paramArrayOfCategory;
  }

  public void setMale(CategoryRoot.Category[] paramArrayOfCategory)
  {
    this.male = paramArrayOfCategory;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.CategoryRoot
 * JD-Core Version:    0.6.0
 */