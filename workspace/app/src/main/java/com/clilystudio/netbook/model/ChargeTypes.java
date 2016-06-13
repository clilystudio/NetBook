package com.clilystudio.netbook.model;

public class ChargeTypes {
    private boolean ok;
    private ChargeType[] products;

    public ChargeType[] getTypes() {
        return this.products;
    }

    public void setTypes(ChargeType[] arrchargeType) {
        this.products = arrchargeType;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
