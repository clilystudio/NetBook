package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;

public class Toc
  implements Serializable
{
  private static final long serialVersionUID = -3277489999990478661L;
  private String _id;
  private ChapterLink[] chapters;
  private String host;
  private String name;
  private boolean realChapter = true;

  public ChapterLink[] getChapters()
  {
    return this.chapters;
  }

  public String getHost()
  {
    return this.host;
  }

  public String getName()
  {
    return this.name;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isRealChapter()
  {
    return this.realChapter;
  }

  public void setChapters(ChapterLink[] paramArrayOfChapterLink)
  {
    this.chapters = paramArrayOfChapterLink;
  }

  public void setHost(String paramString)
  {
    this.host = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setRealChapter(boolean paramBoolean)
  {
    this.realChapter = paramBoolean;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Toc
 * JD-Core Version:    0.6.0
 */