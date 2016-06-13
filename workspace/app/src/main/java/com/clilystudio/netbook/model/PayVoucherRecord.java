package com.clilystudio.netbook.model;

public class PayVoucherRecord {
    private boolean ok;
    private PayVoucherRecord$Voucher[] vouchers;

    public PayVoucherRecord$Voucher[] getVouchers() {
        return this.vouchers;
    }

    public void setVouchers(PayVoucherRecord$Voucher[] arrpayVoucherRecord$Voucher) {
        this.vouchers = arrpayVoucherRecord$Voucher;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
