package com.clilystudio.netbook.model;

public class PayBalance {
    private int balance;
    private boolean ok;
    private int voucherBalance;

    public int getBalance() {
        return this.balance;
    }

    public void setBalance(int n) {
        this.balance = n;
    }

    public int getVoucherBalance() {
        return this.voucherBalance;
    }

    public void setVoucherBalance(int n) {
        this.voucherBalance = n;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
