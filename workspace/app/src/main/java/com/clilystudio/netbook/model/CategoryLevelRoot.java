package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot implements Serializable {
    private CategoryLevelRoot$CategoryLevel[] female;
    private CategoryLevelRoot$CategoryLevel[] male;
    private boolean ok;

    public CategoryLevelRoot$CategoryLevel[] getFemale() {
        return this.female;
    }

    public void setFemale(CategoryLevelRoot$CategoryLevel[] arrcategoryLevelRoot$CategoryLevel) {
        this.female = arrcategoryLevelRoot$CategoryLevel;
    }

    public CategoryLevelRoot$CategoryLevel[] getMale() {
        return this.male;
    }

    public void setMale(CategoryLevelRoot$CategoryLevel[] arrcategoryLevelRoot$CategoryLevel) {
        this.male = arrcategoryLevelRoot$CategoryLevel;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class CategoryLevel implements Serializable {
        final /* synthetic */ CategoryLevelRoot this$0;
        private String major;
        private String[] mins;

        public CategoryLevel(CategoryLevelRoot categoryLevelRoot) {
            this.this$0 = categoryLevelRoot;
        }

        public String getMajor() {
            return this.major;
        }

        public void setMajor(String string) {
            this.major = string;
        }

        public String[] getMins() {
            return this.mins;
        }

        public void setMins(String[] arrstring) {
            this.mins = arrstring;
        }
    }
}
