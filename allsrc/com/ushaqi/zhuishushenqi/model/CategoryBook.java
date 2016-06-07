package com.ushaqi.zhuishushenqi.model;

public class CategoryBook extends BookSummary
{
  private String majorCate;
  private String minorCate;

  public String getMajorCate()
  {
    return this.majorCate;
  }

  public String getMinorCate()
  {
    return this.minorCate;
  }

  public void setMajorCate(String paramString)
  {
    this.majorCate = paramString;
  }

  public void setMinorCate(String paramString)
  {
    this.minorCate = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.CategoryBook
 * JD-Core Version:    0.6.0
 */