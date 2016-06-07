package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot$CategoryLevel
  implements Serializable
{
  private String major;
  private String[] mins;

  public CategoryLevelRoot$CategoryLevel(CategoryLevelRoot paramCategoryLevelRoot)
  {
  }

  public String getMajor()
  {
    return this.major;
  }

  public String[] getMins()
  {
    return this.mins;
  }

  public void setMajor(String paramString)
  {
    this.major = paramString;
  }

  public void setMins(String[] paramArrayOfString)
  {
    this.mins = paramArrayOfString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.CategoryLevelRoot.CategoryLevel
 * JD-Core Version:    0.6.0
 */