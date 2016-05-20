package com.clilystudio.app.netbook.model;

import java.util.Date;

public class RemoteBookShelf
{
  private RemoteBookShelf.Book[] bookshelf;
  private String code;
  private RemoteBookShelf.Book[] feedingBooks;
  private boolean mNeedSync = true;
  private Date mSyncDate;
  private boolean ok;

  public RemoteBookShelf.Book[] getBookShelfs()
  {
    return this.bookshelf;
  }

  public String getCode()
  {
    return this.code;
  }

  public RemoteBookShelf.Book[] getFeedingBooks()
  {
    return this.feedingBooks;
  }

  public Date getSyncDate()
  {
    return this.mSyncDate;
  }

  public int getTotalBookCounts()
  {
    if (this.bookshelf != null);
    for (int i = this.bookshelf.length; ; i = 0)
    {
      RemoteBookShelf.Book[] arrayOfBook = this.feedingBooks;
      int j = 0;
      if (arrayOfBook != null)
        j = this.feedingBooks.length;
      return i + j;
    }
  }

  public boolean isNeedSync()
  {
    return this.mNeedSync;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setBookShelfs(RemoteBookShelf.Book[] paramArrayOfBook)
  {
    this.bookshelf = paramArrayOfBook;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setFeedingBooks(RemoteBookShelf.Book[] paramArrayOfBook)
  {
    this.feedingBooks = paramArrayOfBook;
  }

  public void setNeedSync(boolean paramBoolean)
  {
    this.mNeedSync = paramBoolean;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setSyncDate(Date paramDate)
  {
    this.mSyncDate = paramDate;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.RemoteBookShelf
 * JD-Core Version:    0.6.2
 */