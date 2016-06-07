package com.ushaqi.zhuishushenqi.model.mixtoc;

public class SgTocRoot
{
  private SgTocBook book;
  private SgTocChapter[] chapter;

  public SgTocBook getBook()
  {
    return this.book;
  }

  public SgTocChapter[] getChapter()
  {
    return this.chapter;
  }

  public void setBook(SgTocBook paramSgTocBook)
  {
    this.book = paramSgTocBook;
  }

  public void setChapter(SgTocChapter[] paramArrayOfSgTocChapter)
  {
    this.chapter = paramArrayOfSgTocChapter;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.mixtoc.SgTocRoot
 * JD-Core Version:    0.6.0
 */