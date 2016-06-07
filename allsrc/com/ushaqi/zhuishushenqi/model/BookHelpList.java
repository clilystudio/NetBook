package com.ushaqi.zhuishushenqi.model;

public class BookHelpList
{
  private BookHelpSummary[] helps;
  private boolean ok;

  public BookHelpSummary[] getHelps()
  {
    return this.helps;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setHelps(BookHelpSummary[] paramArrayOfBookHelpSummary)
  {
    this.helps = paramArrayOfBookHelpSummary;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.BookHelpList
 * JD-Core Version:    0.6.0
 */