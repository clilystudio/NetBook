package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.UshaqiOnlineConfig
 * JD-Core Version:    0.6.2
 */