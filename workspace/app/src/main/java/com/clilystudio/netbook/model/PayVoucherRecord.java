package com.clilystudio.netbook.model;

public class PayVoucherRecord {
    private boolean ok;
    private PayVoucherRecord.Voucher[] vouchers;

    public PayVoucherRecord.Voucher[] getVouchers() {
        return this.vouchers;
    }

    public void setVouchers(PayVoucherRecord.Voucher[] paramArrayOfVoucher) {
        this.vouchers = paramArrayOfVoucher;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

