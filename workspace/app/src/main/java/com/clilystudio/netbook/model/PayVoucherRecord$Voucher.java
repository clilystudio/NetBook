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
        return this.accountId;
    }

    public void setAccountId(String paramString) {
        this.accountId = paramString;
    }

    public int getAmount() {
        return this.amount;
    }

    public void setAmount(int paramInt) {
        this.amount = paramInt;
    }

    public int getBalance() {
        return this.balance;
    }

    public void setBalance(int paramInt) {
        this.balance = paramInt;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public Date getExpired() {
        return this.expired;
    }

    public void setExpired(Date paramDate) {
        this.expired = paramDate;
    }

    public String getFrom() {
        return this.from;
    }

    public void setFrom(String paramString) {
        this.from = paramString;
    }

    public int get_id() {
        return this._id;
    }

    public void set_id(int paramInt) {
        this._id = paramInt;
    }
}

