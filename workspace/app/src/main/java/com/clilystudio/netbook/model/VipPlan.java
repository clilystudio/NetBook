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

    public class Plan {
        private String _id;
        private int currency;
        private long duration;
        private String name;

        public int getCurrency() {
            return this.currency;
        }

        public void setCurrency(int n) {
            this.currency = n;
        }

        public long getDuration() {
            return this.duration;
        }

        public void setDuration(long l) {
            this.duration = l;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String string) {
            this.name = string;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }

}
