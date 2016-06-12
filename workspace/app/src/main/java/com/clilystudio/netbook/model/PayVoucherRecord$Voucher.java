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

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String String1) {
        accountId = String1;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int int1) {
        amount = int1;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int int1) {
        balance = int1;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date Date1) {
        created = Date1;
    }

    public Date getExpired() {
        return expired;
    }

    public void setExpired(Date Date1) {
        expired = Date1;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String String1) {
        from = String1;
    }

    public int get_id() {
        return _id;
    }

    public void set_id(int int1) {
        _id = int1;
    }
}
