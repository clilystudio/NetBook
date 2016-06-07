package com.clilystudio.netbook.model;

public class BookRankDetailRoot
{
  private boolean ok;
  private BookRankDetailList ranking;

  public BookRankDetailList getRanking()
  {
    return this.ranking;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setRanking(BookRankDetailList paramBookRankDetailList)
  {
    this.ranking = paramBookRankDetailList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.BookRankDetailRoot
 * JD-Core Version:    0.6.0
 */