package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;

public class ChapterLink
  implements Serializable
{
  private static final long serialVersionUID = -5702613650428568284L;
  private int currency;
  private String id;
  private boolean isVip;
  private String link;
  private int mEasouIndex;
  private String mLeidianTk;
  private int mSosoIndex;
  private int mTxtCharLength;
  private int mTxtCharOffset;
  private int mTxtLineOffset;
  private String title;
  private boolean unreadble = false;

  public int getCurrency()
  {
    return this.currency;
  }

  public int getEasouIndex()
  {
    return this.mEasouIndex;
  }

  public String getId()
  {
    return this.id;
  }

  public String getLeidianTk()
  {
    return this.mLeidianTk;
  }

  public String getLink()
  {
    return this.link;
  }

  public int getSosoIndex()
  {
    return this.mSosoIndex;
  }

  public String getTitle()
  {
    return this.title;
  }

  public int getTxtCharLength()
  {
    return this.mTxtCharLength;
  }

  public int getTxtCharOffset()
  {
    return this.mTxtCharOffset;
  }

  public int getTxtLineOffset()
  {
    return this.mTxtLineOffset;
  }

  public boolean getUnreadble()
  {
    return this.unreadble;
  }

  public boolean isVip()
  {
    return this.isVip;
  }

  public void setCurrency(int paramInt)
  {
    this.currency = paramInt;
  }

  public void setEasouIndex(int paramInt)
  {
    this.mEasouIndex = paramInt;
  }

  public void setId(String paramString)
  {
    this.id = paramString;
  }

  public void setIsVip(boolean paramBoolean)
  {
    this.isVip = paramBoolean;
  }

  public void setLeidianTk(String paramString)
  {
    this.mLeidianTk = paramString;
  }

  public void setLink(String paramString)
  {
    this.link = paramString;
  }

  public void setSosoIndex(int paramInt)
  {
    this.mSosoIndex = paramInt;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setTxtCharLength(int paramInt)
  {
    this.mTxtCharLength = paramInt;
  }

  public void setTxtCharOffset(int paramInt)
  {
    this.mTxtCharOffset = paramInt;
  }

  public void setTxtLineOffset(int paramInt)
  {
    this.mTxtLineOffset = paramInt;
  }

  public void setUnreadble(boolean paramBoolean)
  {
    this.unreadble = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.ChapterLink
 * JD-Core Version:    0.6.0
 */