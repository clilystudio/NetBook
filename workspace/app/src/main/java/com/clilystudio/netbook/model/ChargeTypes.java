
package com.clilystudio.netbook.model;

public class ChargeTypes {

    private boolean ok;
    private ChargeType[] products;

    public ChargeType[] getTypes()
    {
        return products;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setTypes(ChargeType[] ChargeType_1darray1)
    {
        products = ChargeType_1darray1;
    }
}
