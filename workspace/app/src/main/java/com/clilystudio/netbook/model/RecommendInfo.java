package com.clilystudio.netbook.model;

import com.google.gson.Gson;

public class RecommendInfo
{
  private String op;
  private String recommended;

  public static RecommendInfo getInfoFromJson(String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      RecommendInfo localRecommendInfo = (RecommendInfo)new Gson().fromJson(paramString, RecommendInfo.class);
      return localRecommendInfo;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public String getOp()
  {
    return this.op;
  }

  public String getRecommended()
  {
    return this.recommended;
  }

  public void setOp(String paramString)
  {
    this.op = paramString;
  }

  public void setRecommended(String paramString)
  {
    this.recommended = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.RecommendInfo
 * JD-Core Version:    0.6.0
 */