package com.ushaqi.zhuishushenqi.model;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.UgcFilterRoot
 * JD-Core Version:    0.6.0
 */