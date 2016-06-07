package com.ximalaya.ting.android.opensdk.model.column;

import com.google.gson.annotations.SerializedName;

public class Column
{

  @SerializedName("column_content_type")
  private int columnContentType;

  @SerializedName("column_foot_note")
  private String columnFootNote;

  @SerializedName("id")
  private long columnId;

  @SerializedName("column_sub_title")
  private String columnSubTitle;

  @SerializedName("column_title")
  private String columnTitle;

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("cover_url_small")
  private String coverUrlSmall;

  @SerializedName("is_hot")
  private boolean isHot;

  @SerializedName("released_at")
  private long releasedAt;

  public int getColumnContentType()
  {
    return this.columnContentType;
  }

  public String getColumnFootNote()
  {
    return this.columnFootNote;
  }

  public long getColumnId()
  {
    return this.columnId;
  }

  public String getColumnSubTitle()
  {
    return this.columnSubTitle;
  }

  public String getColumnTitle()
  {
    return this.columnTitle;
  }

  public String getCoverUrlLarge()
  {
    return this.coverUrlLarge;
  }

  public String getCoverUrlSmall()
  {
    return this.coverUrlSmall;
  }

  public long getReleasedAt()
  {
    return this.releasedAt;
  }

  public boolean isHot()
  {
    return this.isHot;
  }

  public void setColumnContentType(int paramInt)
  {
    this.columnContentType = paramInt;
  }

  public void setColumnFootNote(String paramString)
  {
    this.columnFootNote = paramString;
  }

  public void setColumnId(long paramLong)
  {
    this.columnId = paramLong;
  }

  public void setColumnSubTitle(String paramString)
  {
    this.columnSubTitle = paramString;
  }

  public void setColumnTitle(String paramString)
  {
    this.columnTitle = paramString;
  }

  public void setCoverUrlLarge(String paramString)
  {
    this.coverUrlLarge = paramString;
  }

  public void setCoverUrlSmall(String paramString)
  {
    this.coverUrlSmall = paramString;
  }

  public void setHot(boolean paramBoolean)
  {
    this.isHot = paramBoolean;
  }

  public void setReleasedAt(long paramLong)
  {
    this.releasedAt = paramLong;
  }

  public String toString()
  {
    return "Column [columnId=" + this.columnId + ", columnTitle=" + this.columnTitle + ", columnSubTitle=" + this.columnSubTitle + ", columnFootNote=" + this.columnFootNote + ", columnContentType=" + this.columnContentType + ", coverUrlSmall=" + this.coverUrlSmall + ", coverUrlLarge=" + this.coverUrlLarge + ", releasedAt=" + this.releasedAt + ", isHot=" + this.isHot + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.column.Column
 * JD-Core Version:    0.6.0
 */