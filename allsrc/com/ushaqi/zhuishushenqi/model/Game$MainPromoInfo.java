package com.ushaqi.zhuishushenqi.model;

import java.io.Serializable;

public class Game$MainPromoInfo
  implements Serializable
{
  private static final long serialVersionUID = -6306060308396347871L;
  private String desc;
  private int playingCount;

  public String getDesc()
  {
    return this.desc;
  }

  public int getPlayingCount()
  {
    return this.playingCount;
  }

  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public void setPlayingCount(int paramInt)
  {
    this.playingCount = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.Game.MainPromoInfo
 * JD-Core Version:    0.6.0
 */