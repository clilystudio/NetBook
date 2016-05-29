package com.clilystudio.app.netbook.model;

public class PayVoucherRecord {
    private boolean ok;
    private PayVoucherRecord.Voucher[] vouchers;

    public PayVoucherRecord.Voucher[] getVouchers() {
        return this.vouchers;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setVouchers(PayVoucherRecord.Voucher[] paramArrayOfVoucher) {
        this.vouchers = paramArrayOfVoucher;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.PayVoucherRecord
 * JD-Core Version:    0.6.2
 */