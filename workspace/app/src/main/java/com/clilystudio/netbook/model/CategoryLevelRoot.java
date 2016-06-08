package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot implements Serializable {
    private CategoryLevelRoot.CategoryLevel[] female;
    private CategoryLevelRoot.CategoryLevel[] male;
    private boolean ok;

    public CategoryLevelRoot.CategoryLevel[] getFemale() {
        return this.female;
    }

    public void setFemale(CategoryLevelRoot.CategoryLevel[] paramArrayOfCategoryLevel) {
        this.female = paramArrayOfCategoryLevel;
    }

    public CategoryLevelRoot.CategoryLevel[] getMale() {
        return this.male;
    }

    public void setMale(CategoryLevelRoot.CategoryLevel[] paramArrayOfCategoryLevel) {
        this.male = paramArrayOfCategoryLevel;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class CategoryLevel implements Serializable {
        private String major;
        private String[] mins;

        public CategoryLevel(CategoryLevelRoot paramCategoryLevelRoot) {
        }

        public String getMajor() {
            return this.major;
        }

        public void setMajor(String paramString) {
            this.major = paramString;
        }

        public String[] getMins() {
            return this.mins;
        }

        public void setMins(String[] paramArrayOfString) {
            this.mins = paramArrayOfString;
        }
    }

}

