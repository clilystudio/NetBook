
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class ChargeType implements Serializable {

    private ChargePlan[] plan;
    private String type;
    private static final long serialVersionUID = 690267482403879770L;

    public ChargePlan[] getPlan()
    {
        return plan;
    }

    public String getType()
    {
        return type;
    }

    public void setPlan(ChargePlan[] ChargePlan_1darray1)
    {
        plan = ChargePlan_1darray1;
    }

    public void setType(String String1)
    {
        type = String1;
    }
}
