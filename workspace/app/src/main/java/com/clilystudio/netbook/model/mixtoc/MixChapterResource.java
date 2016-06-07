package com.clilystudio.netbook.model.mixtoc;

import com.clilystudio.netbook.model.ChapterLink;

public class MixChapterResource
{
  private ChapterLink chapter;
  private String host;
  private String source;

  public ChapterLink getChapter()
  {
    return this.chapter;
  }

  public String getHost()
  {
    return this.host;
  }

  public String getSource()
  {
    return this.source;
  }

  public void setChapter(ChapterLink paramChapterLink)
  {
    this.chapter = paramChapterLink;
  }

  public void setHost(String paramString)
  {
    this.host = paramString;
  }

  public void setSource(String paramString)
  {
    this.source = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.mixtoc.MixChapterResource
 * JD-Core Version:    0.6.0
 */