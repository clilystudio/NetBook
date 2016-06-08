package com.clilystudio.netbook.model;

public class PayBalance {
    private int balance;
    private boolean ok;
    private int voucherBalance;

    public int getBalance() {
        return this.balance;
    }

    public void setBalance(int paramInt) {
        this.balance = paramInt;
    }

    public int getVoucherBalance() {
        return this.voucherBalance;
    }

    public void setVoucherBalance(int paramInt) {
        this.voucherBalance = paramInt;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

