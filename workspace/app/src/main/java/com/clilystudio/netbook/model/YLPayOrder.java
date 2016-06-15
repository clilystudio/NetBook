package com.clilystudio.netbook.model;

public class YLPayOrder {
    private boolean ok;
    private PayOrder payOrder;

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
        String SubmitUrl;
        String orderId;
        String resultCode;

        public String getOrderId() {
            return this.orderId;
        }

        public void setOrderId(String string) {
            this.orderId = string;
        }

        public String getResultCode() {
            return this.resultCode;
        }

        public void setResultCode(String string) {
            this.resultCode = string;
        }

        public String getSubmitUrl() {
            return this.SubmitUrl;
        }

        public void setSubmitUrl(String string) {
            this.SubmitUrl = string;
        }
    }

}
