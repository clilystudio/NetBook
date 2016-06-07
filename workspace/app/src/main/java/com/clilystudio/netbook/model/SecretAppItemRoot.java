package com.clilystudio.netbook.model;

public class SecretAppItemRoot
{
  private AppItem[] apps = new AppItem[0];
  private boolean ok;

  public AppItem[] getApps()
  {
    return this.apps;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setApps(AppItem[] paramArrayOfAppItem)
  {
    this.apps = paramArrayOfAppItem;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.SecretAppItemRoot
 * JD-Core Version:    0.6.0
 */