package com.clilystudio.app.netbook.model;

public class BookInfo extends BookSummary
{
  private static final long serialVersionUID = -8685880187278615441L;
  private int chaptersCount;
  private boolean hasCp;
  private boolean isSerial;
  private String longIntro;
  private int postCount;
  private int serializeWordCount = -1;

  public int getChaptersCount()
  {
    return this.chaptersCount;
  }

  public boolean getIsSerial()
  {
    return this.isSerial;
  }

  public String getLongIntro()
  {
    return this.longIntro;
  }

  public int getPostCount()
  {
    return this.postCount;
  }

  public int getSerializeWordCount()
  {
    return this.serializeWordCount;
  }

  public boolean isHasCp()
  {
    return this.hasCp;
  }

  public void setChaptersCount(int paramInt)
  {
    this.chaptersCount = paramInt;
  }

  public void setHasCp(boolean paramBoolean)
  {
    this.hasCp = paramBoolean;
  }

  public void setIsSerial(boolean paramBoolean)
  {
    this.isSerial = paramBoolean;
  }

  public void setLongIntro(String paramString)
  {
    this.longIntro = paramString;
  }

  public void setPostCount(int paramInt)
  {
    this.postCount = paramInt;
  }

  public void setSerializeWordCount(int paramInt)
  {
    this.serializeWordCount = paramInt;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.BookInfo
 * JD-Core Version:    0.6.2
 */