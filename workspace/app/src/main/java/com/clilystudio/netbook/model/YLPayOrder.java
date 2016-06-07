package com.clilystudio.netbook.model;

public class YLPayOrder
{
  private boolean ok;
  private YLPayOrder.PayOrder payOrder;

  public YLPayOrder.PayOrder getPayOrder()
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

  public void setPayOrder(YLPayOrder.PayOrder paramPayOrder)
  {
    this.payOrder = paramPayOrder;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.YLPayOrder
 * JD-Core Version:    0.6.0
 */