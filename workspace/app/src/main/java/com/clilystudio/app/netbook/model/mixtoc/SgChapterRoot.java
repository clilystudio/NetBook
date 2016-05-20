package com.clilystudio.app.netbook.model.mixtoc;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.mixtoc.SgChapterRoot
 * JD-Core Version:    0.6.2
 */