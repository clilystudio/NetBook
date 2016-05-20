package com.clilystudio.app.netbook.model;

public class UgcFilterRoot
{
  private UgcFilterRoot.FilterGroup[] data;
  private boolean ok;

  public UgcFilterRoot.FilterGroup[] getData()
  {
    return this.data;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setData(UgcFilterRoot.FilterGroup[] paramArrayOfFilterGroup)
  {
    this.data = paramArrayOfFilterGroup;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.UgcFilterRoot
 * JD-Core Version:    0.6.2
 */