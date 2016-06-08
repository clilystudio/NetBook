package com.clilystudio.netbook.model;

import java.util.Date;

public class PayChargeRecord {
    private boolean ok;
    private PayChargeRecord.Order[] orders;

    public PayChargeRecord.Order[] getOrders() {
        return this.orders;
    }

    public void setOrders(PayChargeRecord.Order[] paramArrayOfOrder) {
        this.orders = paramArrayOfOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class Order {
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

        public void setAccountId(String paramString) {
            this.accountId = paramString;
        }

        public int getAmount() {
            return this.amount;
        }

        public void setAmount(int paramInt) {
            this.amount = paramInt;
        }

        public String getChargeString() {
            if (this.completed == null)
                return "未支付";
            if (this.voucher > 0)
                return this.currency + "追书币+" + this.voucher + "追书券";
            return this.currency + "追书币";
        }

        public Date getCompleted() {
            return this.completed;
        }

        public Date getCreated() {
            return this.created;
        }

        public void setCreated(Date paramDate) {
            this.created = paramDate;
        }

        public int getCurrency() {
            return this.currency;
        }

        public void setCurrency(int paramInt) {
            this.currency = paramInt;
        }

        public String getPayId() {
            return this.payId;
        }

        public void setPayId(String paramString) {
            this.payId = paramString;
        }

        public String getPayType() {
            return this.payType;
        }

        public void setPayType(String paramString) {
            this.payType = paramString;
        }

        public float getPrice() {
            return this.price;
        }

        public void setPrice(float paramFloat) {
            this.price = paramFloat;
        }

        public String getStat() {
            return this.stat;
        }

        public void setStat(String paramString) {
            this.stat = paramString;
        }

        public String getTimeflag() {
            return this.timeflag;
        }

        public void setTimeflag(String paramString) {
            this.timeflag = paramString;
        }

        public int getVoucher() {
            return this.voucher;
        }

        public void setVoucher(int paramInt) {
            this.voucher = paramInt;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }

        public boolean isCompleted() {
            return "completed".equals(this.stat);
        }

        public void setCompleted(Date paramDate) {
            this.completed = paramDate;
        }
    }

}

