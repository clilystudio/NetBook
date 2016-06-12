
package com.clilystudio.netbook.model;

import java.util.Date;

public class PayVoucherRecord$Voucher {

    private int _id;
    private String accountId;
    private int amount;
    private int balance;
    private Date created;
    private Date expired;
    private String from;

    public String getAccountId()
    {
        return accountId;
    }

    public int getAmount()
    {
        return amount;
    }

    public int getBalance()
    {
        return balance;
    }

    public Date getCreated()
    {
        return created;
    }

    public Date getExpired()
    {
        return expired;
    }

    public String getFrom()
    {
        return from;
    }

    public int get_id()
    {
        return _id;
    }

    public void setAccountId(String String1)
    {
        accountId = String1;
    }

    public void setAmount(int int1)
    {
        amount = int1;
    }

    public void setBalance(int int1)
    {
        balance = int1;
    }

    public void setCreated(Date Date1)
    {
        created = Date1;
    }

    public void setExpired(Date Date1)
    {
        expired = Date1;
    }

    public void setFrom(String String1)
    {
        from = String1;
    }

    public void set_id(int int1)
    {
        _id = int1;
    }
}
