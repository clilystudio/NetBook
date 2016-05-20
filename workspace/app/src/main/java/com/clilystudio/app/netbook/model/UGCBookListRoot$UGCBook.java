package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;
import java.util.Date;

public class UGCBookListRoot$UGCBook
{
  private String _id;
  private String author;
  private int bookCount;
  private int collectorCount;
  private String cover;
  private String desc;
  private boolean isDraft;
  private String title;
  private Date updated;

  public String getAuthor()
  {
    return this.author;
  }

  public int getBookCount()
  {
    return this.bookCount;
  }

  public int getCollectorCount()
  {
    return this.collectorCount;
  }

  public String getCover()
  {
    return this.cover;
  }

  public String getDesc()
  {
    return this.desc;
  }

  public String getFullCover()
  {
    return ApiService.a + this.cover + "-covers";
  }

  public String getTitle()
  {
    return this.title;
  }

  public Date getUpdated()
  {
    return this.updated;
  }

  public String get_id()
  {
    return this._id;
  }

  public boolean isDraft()
  {
    return this.isDraft;
  }

  public void setAuthor(String paramString)
  {
    this.author = paramString;
  }

  public void setBookCount(int paramInt)
  {
    this.bookCount = paramInt;
  }

  public void setCollectorCount(int paramInt)
  {
    this.collectorCount = paramInt;
  }

  public void setCover(String paramString)
  {
    this.cover = paramString;
  }

  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public void setIsDraft(boolean paramBoolean)
  {
    this.isDraft = paramBoolean;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
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
 * Qualified Name:     com.clilystudio.app.netbook.model.UGCBookListRoot.UGCBook
 * JD-Core Version:    0.6.2
 */