
package com.clilystudio.netbook.model;

public class PayResult {

    private PayChargeRecord$Order chargeOrder;

    public PayChargeRecord$Order getChargeOrder()
    {
        return chargeOrder;
    }

    public void setChargeOrder(PayChargeRecord$Order Order1)
    {
        chargeOrder = Order1;
    }
}
