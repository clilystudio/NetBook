package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;

public class Chapter
  implements Serializable
{
  private static final long serialVersionUID = -7332522845657326368L;
  private String body;
  private String content;
  private String cpContent;
  private int currency;
  private String id;
  private boolean isVip;
  protected String link;

  public String getBody()
  {
    return this.body;
  }

  public String getContent()
  {
    if (this.cpContent != null)
      return this.cpContent;
    return this.content;
  }

  public String getCpContent()
  {
    return this.cpContent;
  }

  public int getCurrency()
  {
    return this.currency;
  }

  public String getId()
  {
    return this.id;
  }

  public String getLink()
  {
    return this.link;
  }

  public boolean isVip()
  {
    return this.isVip;
  }

  public void setBody(String paramString)
  {
    this.body = paramString;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setCpContent(String paramString)
  {
    this.cpContent = paramString;
  }

  public void setCurrency(int paramInt)
  {
    this.currency = paramInt;
  }

  public void setId(String paramString)
  {
    this.id = paramString;
  }

  public void setIsVip(boolean paramBoolean)
  {
    this.isVip = paramBoolean;
  }

  public void setLink(String paramString)
  {
    this.link = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Chapter
 * JD-Core Version:    0.6.0
 */