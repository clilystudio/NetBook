package com.ushaqi.zhuishushenqi.model;

public class ChargeTypes
{
  private boolean ok;
  private ChargeType[] products;

  public ChargeType[] getTypes()
  {
    return this.products;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setTypes(ChargeType[] paramArrayOfChargeType)
  {
    this.products = paramArrayOfChargeType;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.ChargeTypes
 * JD-Core Version:    0.6.0
 */