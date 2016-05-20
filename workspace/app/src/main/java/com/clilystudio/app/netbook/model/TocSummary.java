package com.clilystudio.app.netbook.model;

import java.util.Date;

public class TocSummary
{
  private String _id;
  private String host;
  private String lastChapter;
  private String link;
  private String name;
  private String source;
  private Date updated;

  public String getHost()
  {
    return this.host;
  }

  public String getLastChapter()
  {
    return this.lastChapter;
  }

  public String getLink()
  {
    return this.link;
  }

  public String getName()
  {
    return this.name;
  }

  public String getSource()
  {
    return this.source;
  }

  public Date getUpdated()
  {
    return this.updated;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setHost(String paramString)
  {
    this.host = paramString;
  }

  public void setLastChapter(String paramString)
  {
    this.lastChapter = paramString;
  }

  public void setLink(String paramString)
  {
    this.link = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setSource(String paramString)
  {
    this.source = paramString;
  }

  public void setUpdated(Date paramDate)
  {
    this.updated = paramDate;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.TocSummary
 * JD-Core Version:    0.6.2
 */