package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChargeType
        implements Serializable {
    private static final long serialVersionUID = 690267482403879770L;
    private ChargePlan[] plan;
    private String type;

    public ChargePlan[] getPlan() {
        return this.plan;
    }

    public void setPlan(ChargePlan[] paramArrayOfChargePlan) {
        this.plan = paramArrayOfChargePlan;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }
}

