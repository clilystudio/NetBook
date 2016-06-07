package com.clilystudio.netbook.model;

import java.util.Date;

public class BookShelfSyncTime
{
  private Date bookshelfUpdated;
  private String code;
  private boolean ok;

  public Date getBookshelfUpdated()
  {
    return this.bookshelfUpdated;
  }

  public String getCode()
  {
    return this.code;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setBookshelfUpdated(Date paramDate)
  {
    this.bookshelfUpdated = paramDate;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.BookShelfSyncTime
 * JD-Core Version:    0.6.0
 */