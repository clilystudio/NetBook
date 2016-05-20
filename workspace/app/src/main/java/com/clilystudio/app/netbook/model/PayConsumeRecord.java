package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.PayConsumeRecord
 * JD-Core Version:    0.6.2
 */