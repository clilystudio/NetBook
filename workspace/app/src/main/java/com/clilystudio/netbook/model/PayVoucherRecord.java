package com.clilystudio.netbook.model;

public class PayVoucherRecord {

    private boolean ok;
    private PayVoucherRecord$Voucher[] vouchers;

    public PayVoucherRecord$Voucher[] getVouchers() {
        return vouchers;
    }

    public void setVouchers(PayVoucherRecord$Voucher[] Voucher_1darray1) {
        vouchers = Voucher_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
