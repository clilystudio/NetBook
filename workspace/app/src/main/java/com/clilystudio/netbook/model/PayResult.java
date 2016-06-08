package com.clilystudio.netbook.model;

public class PayResult {
    private PayChargeRecord.Order chargeOrder;

    public PayChargeRecord.Order getChargeOrder() {
        return this.chargeOrder;
    }

    public void setChargeOrder(PayChargeRecord.Order paramOrder) {
        this.chargeOrder = paramOrder;
    }
}

