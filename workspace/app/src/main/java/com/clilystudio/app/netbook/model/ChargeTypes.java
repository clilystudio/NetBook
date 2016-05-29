package com.clilystudio.app.netbook.model;

public class ChargeTypes {
    private boolean ok;
    private ChargeType[] products;

    public ChargeType[] getTypes() {
        return this.products;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setTypes(ChargeType[] paramArrayOfChargeType) {
        this.products = paramArrayOfChargeType;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ChargeTypes
 * JD-Core Version:    0.6.2
 */