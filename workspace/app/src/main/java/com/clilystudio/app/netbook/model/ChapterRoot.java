package com.clilystudio.app.netbook.model;

public class ChapterRoot
{
  private Chapter chapter;
  private boolean ok;
  private int status;

  public Chapter getChapter()
  {
    return this.chapter;
  }

  public int getStatus()
  {
    return this.status;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setChapter(Chapter paramChapter)
  {
    this.chapter = paramChapter;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ChapterRoot
 * JD-Core Version:    0.6.2
 */