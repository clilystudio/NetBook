package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot$CategoryLevel implements Serializable {
    final /* synthetic */ CategoryLevelRoot this$0;
    private String major;
    private String[] mins;

    public CategoryLevelRoot$CategoryLevel(CategoryLevelRoot categoryLevelRoot) {
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
