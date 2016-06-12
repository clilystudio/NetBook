package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChargeType implements Serializable {

    private static final long serialVersionUID = 690267482403879770L;
    private ChargePlan[] plan;
    private String type;

    public ChargePlan[] getPlan() {
        return plan;
    }

    public void setPlan(ChargePlan[] ChargePlan_1darray1) {
        plan = ChargePlan_1darray1;
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }
}
