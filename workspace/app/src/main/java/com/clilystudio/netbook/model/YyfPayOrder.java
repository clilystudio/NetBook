package com.clilystudio.netbook.model;

public class YyfPayOrder
{
  private boolean ok;
  private String orderId;
  private YyfPayOrder.PayOrder payOrder;

  public String getOrderId()
  {
    return this.orderId;
  }

  public YyfPayOrder.PayOrder getPayOrder()
  {
    return this.payOrder;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setOrderId(String paramString)
  {
    this.orderId = paramString;
  }

  public void setPayOrder(YyfPayOrder.PayOrder paramPayOrder)
  {
    this.payOrder = paramPayOrder;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.YyfPayOrder
 * JD-Core Version:    0.6.0
 */