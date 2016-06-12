
package com.clilystudio.netbook.model;

public class PayBalance {

    private int balance;
    private boolean ok;
    private int voucherBalance;

    public int getBalance()
    {
        return balance;
    }

    public int getVoucherBalance()
    {
        return voucherBalance;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBalance(int int1)
    {
        balance = int1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setVoucherBalance(int int1)
    {
        voucherBalance = int1;
    }
}
