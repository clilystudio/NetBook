package com.clilystudio.netbook.model;

public class YyfPayOrder {
    private boolean ok;
    private String orderId;
    private PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String string) {
        this.orderId = string;
    }

    public PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(PayOrder payOrder) {
        this.payOrder = payOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class PayOrder {
        private int amount;
        private String appOrderid;
        private String payName;
        private String spPayCode;

        public int getAmount() {
            return this.amount;
        }

        public void setAmount(int n) {
            this.amount = n;
        }

        public String getAppOrderid() {
            return this.appOrderid;
        }

        public void setAppOrderid(String string) {
            this.appOrderid = string;
        }

        public String getPayName() {
            return this.payName;
        }

        public void setPayName(String string) {
            this.payName = string;
        }

        public String getSpPayCode() {
            return this.spPayCode;
        }

        public void setSpPayCode(String string) {
            this.spPayCode = string;
        }
    }

}
