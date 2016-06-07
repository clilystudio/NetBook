package com.clilystudio.netbook.model;

public class AdsResult
{
  private AdvertData[] adverts;
  private boolean ok;

  public AdvertData[] getAdverts()
  {
    return this.adverts;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setAdverts(AdvertData[] paramArrayOfAdvertData)
  {
    this.adverts = paramArrayOfAdvertData;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.AdsResult
 * JD-Core Version:    0.6.0
 */