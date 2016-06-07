package com.ximalaya.ting.android.opensdk.datatrasfer;

import com.google.gson.annotations.SerializedName;

public class DataErrorCategory
{

  @SerializedName("error_code")
  private String mErrorCode;

  @SerializedName("error_desc")
  private String mErrorDesc;

  @SerializedName("error_no")
  private int mErrorNo;

  public String getErrorCode()
  {
    return this.mErrorCode;
  }

  public String getErrorDesc()
  {
    return this.mErrorDesc;
  }

  public int getErrorNo()
  {
    return this.mErrorNo;
  }

  public void setErrorCode(String paramString)
  {
    this.mErrorCode = paramString;
  }

  public void setErrorDesc(String paramString)
  {
    this.mErrorDesc = paramString;
  }

  public void setErrorNo(int paramInt)
  {
    this.mErrorNo = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.datatrasfer.DataErrorCategory
 * JD-Core Version:    0.6.0
 */