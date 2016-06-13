package com.clilystudio.netbook.model;

import java.util.Date;

public class PayChargeRecord$Order {
    private String _id;
    private String accountId;
    private int amount;
    private Date completed;
    private Date created;
    private int currency;
    private String payId;
    private String payType;
    private float price;
    private String stat;
    private String timeflag;
    private int voucher;

    public String getAccountId() {
        return this.accountId;
    }

    public void setAccountId(String string) {
        this.accountId = string;
    }

    public int getAmount() {
        return this.amount;
    }

    public void setAmount(int n) {
        this.amount = n;
    }

    public String getChargeString() {
        if (this.completed == null) {
            return "\u672a\u652f\u4ed8";
        }
        if (this.voucher > 0) {
            return "" + this.currency + "\u8ffd\u4e66\u5e01+" + this.voucher + "\u8ffd\u4e66\u5238";
        }
        return "" + this.currency + "\u8ffd\u4e66\u5e01";
    }

    public Date getCompleted() {
        return this.completed;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date date) {
        this.created = date;
    }

    public int getCurrency() {
        return this.currency;
    }

    public void setCurrency(int n) {
        this.currency = n;
    }

    public String getPayId() {
        return this.payId;
    }

    public void setPayId(String string) {
        this.payId = string;
    }

    public String getPayType() {
        return this.payType;
    }

    public void setPayType(String string) {
        this.payType = string;
    }

    public float getPrice() {
        return this.price;
    }

    public void setPrice(float f) {
        this.price = f;
    }

    public String getStat() {
        return this.stat;
    }

    public void setStat(String string) {
        this.stat = string;
    }

    public String getTimeflag() {
        return this.timeflag;
    }

    public void setTimeflag(String string) {
        this.timeflag = string;
    }

    public int getVoucher() {
        return this.voucher;
    }

    public void setVoucher(int n) {
        this.voucher = n;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public boolean isCompleted() {
        return "completed".equals(this.stat);
    }

    public void setCompleted(Date date) {
        this.completed = date;
    }
}
