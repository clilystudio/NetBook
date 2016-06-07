package com.clilystudio.netbook.model.mixtoc;

public class SgChapterRoot
{
  private SgChapterBook book;
  private SgMixChapter[] content;

  public SgChapterBook getBook()
  {
    return this.book;
  }

  public SgMixChapter[] getContent()
  {
    return this.content;
  }

  public void setBook(SgChapterBook paramSgChapterBook)
  {
    this.book = paramSgChapterBook;
  }

  public void setContent(SgMixChapter[] paramArrayOfSgMixChapter)
  {
    this.content = paramArrayOfSgMixChapter;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.mixtoc.SgChapterRoot
 * JD-Core Version:    0.6.0
 */