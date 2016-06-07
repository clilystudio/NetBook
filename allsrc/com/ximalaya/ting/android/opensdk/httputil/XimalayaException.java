package com.ximalaya.ting.android.opensdk.httputil;

public class XimalayaException extends Exception
{
  private int mErrorCode;
  private String mErrorMessage;

  public XimalayaException(int paramInt, String paramString)
  {
    this.mErrorCode = paramInt;
    this.mErrorMessage = paramString;
  }

  public int getErrorCode()
  {
    return this.mErrorCode;
  }

  public String getErrorMessage()
  {
    return this.mErrorMessage;
  }

  public void setErrorCode(int paramInt)
  {
    this.mErrorCode = paramInt;
  }

  public void setErrorMessage(String paramString)
  {
    this.mErrorMessage = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.XimalayaException
 * JD-Core Version:    0.6.0
 */