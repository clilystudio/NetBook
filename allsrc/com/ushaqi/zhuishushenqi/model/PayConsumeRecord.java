package com.ushaqi.zhuishushenqi.model;

public class PayConsumeRecord
{
  private boolean ok;
  private PayConsumeRecord.Order[] orders;

  public PayConsumeRecord.Order[] getOrders()
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

  public void setOrders(PayConsumeRecord.Order[] paramArrayOfOrder)
  {
    this.orders = paramArrayOfOrder;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.PayConsumeRecord
 * JD-Core Version:    0.6.0
 */