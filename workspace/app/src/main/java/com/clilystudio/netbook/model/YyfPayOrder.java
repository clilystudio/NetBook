package com.clilystudio.netbook.model;

public class YyfPayOrder {
    private boolean ok;
    private String orderId;
    private YyfPayOrder.PayOrder payOrder;

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String paramString) {
        this.orderId = paramString;
    }

    public YyfPayOrder.PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(YyfPayOrder.PayOrder paramPayOrder) {
        this.payOrder = paramPayOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class PayOrder {
        private int amount;
        private String appOrderid;
        private String payName;
        private String spPayCode;

        public int getAmount() {
            return this.amount;
        }

        public void setAmount(int paramInt) {
            this.amount = paramInt;
        }

        public String getAppOrderid() {
            return this.appOrderid;
        }

        public void setAppOrderid(String paramString) {
            this.appOrderid = paramString;
        }

        public String getPayName() {
            return this.payName;
        }

        public void setPayName(String paramString) {
            this.payName = paramString;
        }

        public String getSpPayCode() {
            return this.spPayCode;
        }

        public void setSpPayCode(String paramString) {
            this.spPayCode = paramString;
        }
    }
}

