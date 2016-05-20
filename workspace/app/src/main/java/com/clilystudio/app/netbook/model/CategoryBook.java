package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.CategoryBook
 * JD-Core Version:    0.6.2
 */