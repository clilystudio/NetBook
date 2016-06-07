package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;
import java.util.Date;

public class Splash
  implements Serializable
{
  private static final long serialVersionUID = -1994127725401600755L;
  private String _id;
  private Date end;
  private String img3x4;
  private String insideLink;
  private String link;
  private Date start;

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof Splash)));
    Splash localSplash;
    do
    {
      return false;
      localSplash = (Splash)paramObject;
    }
    while ((localSplash.get_id() == null) || (!localSplash.get_id().equals(get_id())));
    return true;
  }

  public Date getEnd()
  {
    return this.end;
  }

  public String getImg3x4()
  {
    return this.img3x4;
  }

  public String getInsideLink()
  {
    return this.insideLink;
  }

  public String getLink()
  {
    return this.link;
  }

  public Date getStart()
  {
    return this.start;
  }

  public String get_id()
  {
    return this._id;
  }

  public int hashCode()
  {
    if (get_id() == null)
      return 0;
    return get_id().hashCode();
  }

  public void setEnd(Date paramDate)
  {
    this.end = paramDate;
  }

  public void setImg3x4(String paramString)
  {
    this.img3x4 = paramString;
  }

  public void setInsideLink(String paramString)
  {
    this.insideLink = paramString;
  }

  public void setLink(String paramString)
  {
    this.link = paramString;
  }

  public void setStart(Date paramDate)
  {
    this.start = paramDate;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Splash
 * JD-Core Version:    0.6.0
 */