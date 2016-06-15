package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot implements Serializable {
    private CategoryLevel[] female;
    private CategoryLevel[] male;
    private boolean ok;

    public CategoryLevel[] getFemale() {
        return this.female;
    }

    public void setFemale(CategoryLevel[] categoryLevels) {
        this.female = categoryLevels;
    }

    public CategoryLevel[] getMale() {
        return this.male;
    }

    public void setMale(CategoryLevel[] categoryLevels) {
        this.male = categoryLevels;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class CategoryLevel implements Serializable {
        private String major;
        private String[] mins;

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
