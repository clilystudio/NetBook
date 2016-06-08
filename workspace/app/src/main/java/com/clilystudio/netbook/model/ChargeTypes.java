package com.clilystudio.netbook.model;

public class ChargeTypes {
    private boolean ok;
    private ChargeType[] products;

    public ChargeType[] getTypes() {
        return this.products;
    }

    public void setTypes(ChargeType[] paramArrayOfChargeType) {
        this.products = paramArrayOfChargeType;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

