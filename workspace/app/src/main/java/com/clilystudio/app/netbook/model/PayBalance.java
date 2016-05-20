package com.clilystudio.app.netbook.model;

public class PayBalance
{
  private int balance;
  private boolean ok;
  private int voucherBalance;

  public int getBalance()
  {
    return this.balance;
  }

  public int getVoucherBalance()
  {
    return this.voucherBalance;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setBalance(int paramInt)
  {
    this.balance = paramInt;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setVoucherBalance(int paramInt)
  {
    this.voucherBalance = paramInt;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.PayBalance
 * JD-Core Version:    0.6.2
 */