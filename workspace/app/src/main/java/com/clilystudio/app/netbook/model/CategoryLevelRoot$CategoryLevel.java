package com.clilystudio.app.netbook.model;

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

    public String[] getMins() {
        return this.mins;
    }

    public void setMajor(String paramString) {
        this.major = paramString;
    }

    public void setMins(String[] paramArrayOfString) {
        this.mins = paramArrayOfString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.CategoryLevelRoot.CategoryLevel
 * JD-Core Version:    0.6.2
 */