package com.ximalaya.ting.android.opensdk.model.column;

import com.google.gson.annotations.SerializedName;
import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;

public class ColumnDetail extends XimalayaResponse
{

  @SerializedName("column_content_type")
  private int columnContentType;

  @SerializedName("column_editor")
  private ColumnEditor columnEditor;

  @SerializedName("id")
  private long columnId;

  @SerializedName("column_intro")
  private String columnIntro;

  @SerializedName("cover_url_large")
  private String coverUrlLarge;

  @SerializedName("logo_small")
  private String logoSmall;

  public int getColumnContentType()
  {
    return this.columnContentType;
  }

  public ColumnEditor getColumnEditor()
  {
    return this.columnEditor;
  }

  public long getColumnId()
  {
    return this.columnId;
  }

  public String getColumnIntro()
  {
    return this.columnIntro;
  }

  public String getCoverUrlLarge()
  {
    return this.coverUrlLarge;
  }

  public String getLogoSmall()
  {
    return this.logoSmall;
  }

  public void setColumnContentType(int paramInt)
  {
    this.columnContentType = paramInt;
  }

  public void setColumnEditor(ColumnEditor paramColumnEditor)
  {
    this.columnEditor = paramColumnEditor;
  }

  public void setColumnId(long paramLong)
  {
    this.columnId = paramLong;
  }

  public void setColumnIntro(String paramString)
  {
    this.columnIntro = paramString;
  }

  public void setCoverUrlLarge(String paramString)
  {
    this.coverUrlLarge = paramString;
  }

  public void setLogoSmall(String paramString)
  {
    this.logoSmall = paramString;
  }

  public String toString()
  {
    return "ColumnDetail [columnId=" + this.columnId + ", columnIntro=" + this.columnIntro + ", columnContentType=" + this.columnContentType + ", coverUrlLarge=" + this.coverUrlLarge + ", logoSmall=" + this.logoSmall + ", columnEditor=" + this.columnEditor + "]";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.column.ColumnDetail
 * JD-Core Version:    0.6.0
 */