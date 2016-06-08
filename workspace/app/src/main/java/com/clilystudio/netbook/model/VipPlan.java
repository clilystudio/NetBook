package com.clilystudio.netbook.model;

public class VipPlan {
    private boolean ok;
    private VipPlan.Plan[] plans;

    public VipPlan.Plan[] getPlans() {
        return this.plans;
    }

    public void setPlans(VipPlan.Plan[] paramArrayOfPlan) {
        this.plans = paramArrayOfPlan;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class Plan {
        private String _id;
        private int currency;
        private long duration;
        private String name;

        public int getCurrency() {
            return this.currency;
        }

        public void setCurrency(int paramInt) {
            this.currency = paramInt;
        }

        public long getDuration() {
            return this.duration;
        }

        public void setDuration(long paramLong) {
            this.duration = paramLong;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String paramString) {
            this.name = paramString;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }
    }


}

