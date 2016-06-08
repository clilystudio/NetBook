package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot$CategoryLevel
        implements Serializable {
    private String major;
    private String[] mins;

    public CategoryLevelRoot$CategoryLevel(CategoryLevelRoot paramCategoryLevelRoot) {
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

