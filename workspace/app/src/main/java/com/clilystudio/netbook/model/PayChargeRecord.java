
package com.clilystudio.netbook.model;

public class PayChargeRecord {

    private boolean ok;
    private PayChargeRecord$Order[] orders;

    public PayChargeRecord$Order[] getOrders()
    {
        return orders;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setOrders(PayChargeRecord$Order[] Order_1darray1)
    {
        orders = Order_1darray1;
    }
}
