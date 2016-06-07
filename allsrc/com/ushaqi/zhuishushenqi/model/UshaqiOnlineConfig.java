package com.ushaqi.zhuishushenqi.model;

import android.text.TextUtils;

public class UshaqiOnlineConfig
{
  private String serverError;

  public String getServerError()
  {
    return this.serverError;
  }

  public boolean isServerError()
  {
    return !TextUtils.isEmpty(this.serverError);
  }

  public void setServerError(String paramString)
  {
    this.serverError = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.UshaqiOnlineConfig
 * JD-Core Version:    0.6.0
 */