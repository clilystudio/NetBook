package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;
import java.util.List;

public class AdsConfig2
  implements Serializable
{
  private static final long serialVersionUID = -4786655193645998408L;
  private List<MenuAd> advertList;
  private int index;

  public List<MenuAd> getAdvertList()
  {
    return this.advertList;
  }

  public int getIndex()
  {
    return this.index;
  }

  public void setAdvertList(List<MenuAd> paramList)
  {
    this.advertList = paramList;
  }

  public void setIndex(int paramInt)
  {
    this.index = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.AdsConfig2
 * JD-Core Version:    0.6.0
 */