package com.clilystudio.netbook.model;

import java.util.Date;

public class PayVoucherRecord {
    private boolean ok;
    private Voucher[] vouchers;

    public Voucher[] getVouchers() {
        return this.vouchers;
    }

    public void setVouchers(Voucher[] vouchers) {
        this.vouchers = vouchers;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class Voucher {
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

        public void setAccountId(String string) {
            this.accountId = string;
        }

        public int getAmount() {
            return this.amount;
        }

        public void setAmount(int n) {
            this.amount = n;
        }

        public int getBalance() {
            return this.balance;
        }

        public void setBalance(int n) {
            this.balance = n;
        }

        public Date getCreated() {
            return this.created;
        }

        public void setCreated(Date date) {
            this.created = date;
        }

        public Date getExpired() {
            return this.expired;
        }

        public void setExpired(Date date) {
            this.expired = date;
        }

        public String getFrom() {
            return this.from;
        }

        public void setFrom(String string) {
            this.from = string;
        }

        public int get_id() {
            return this._id;
        }

        public void set_id(int n) {
            this._id = n;
        }
    }

}
