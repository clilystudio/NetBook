package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.SecretAppItemRoot
 * JD-Core Version:    0.6.2
 */