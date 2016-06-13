package com.clilystudio.netbook.model;

public class VipPlan {
    private boolean ok;
    private VipPlan$Plan[] plans;

    public VipPlan$Plan[] getPlans() {
        return this.plans;
    }

    public void setPlans(VipPlan$Plan[] arrvipPlan$Plan) {
        this.plans = arrvipPlan$Plan;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
