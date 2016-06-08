package com.clilystudio.netbook.model;

public class YLPayOrder {
    private boolean ok;
    private YLPayOrder.PayOrder payOrder;

    public YLPayOrder.PayOrder getPayOrder() {
        return this.payOrder;
    }

    public void setPayOrder(YLPayOrder.PayOrder paramPayOrder) {
        this.payOrder = paramPayOrder;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class PayOrder {
        String SubmitUrl;
        String orderId;
        String resultCode;

        public String getOrderId() {
            return this.orderId;
        }

        public void setOrderId(String paramString) {
            this.orderId = paramString;
        }

        public String getResultCode() {
            return this.resultCode;
        }

        public void setResultCode(String paramString) {
            this.resultCode = paramString;
        }

        public String getSubmitUrl() {
            return this.SubmitUrl;
        }

        public void setSubmitUrl(String paramString) {
            this.SubmitUrl = paramString;
        }
    }
}

