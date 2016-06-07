package com.clilystudio.netbook.model;

public class PayChargeRecord
{
  private boolean ok;
  private PayChargeRecord.Order[] orders;

  public PayChargeRecord.Order[] getOrders()
  {
    return this.orders;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setOrders(PayChargeRecord.Order[] paramArrayOfOrder)
  {
    this.orders = paramArrayOfOrder;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.PayChargeRecord
 * JD-Core Version:    0.6.0
 */