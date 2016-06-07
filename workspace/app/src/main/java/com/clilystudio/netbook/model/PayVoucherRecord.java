package com.clilystudio.netbook.model;

public class PayVoucherRecord
{
  private boolean ok;
  private PayVoucherRecord.Voucher[] vouchers;

  public PayVoucherRecord.Voucher[] getVouchers()
  {
    return this.vouchers;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }

  public void setVouchers(PayVoucherRecord.Voucher[] paramArrayOfVoucher)
  {
    this.vouchers = paramArrayOfVoucher;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.PayVoucherRecord
 * JD-Core Version:    0.6.0
 */