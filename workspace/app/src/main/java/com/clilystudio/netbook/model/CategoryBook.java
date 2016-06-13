package com.clilystudio.netbook.model;

public class CategoryBook
        extends BookSummary {
    private String majorCate;
    private String minorCate;

    public String getMajorCate() {
        return this.majorCate;
    }

    public void setMajorCate(String string) {
        this.majorCate = string;
    }

    public String getMinorCate() {
        return this.minorCate;
    }

    public void setMinorCate(String string) {
        this.minorCate = string;
    }
}
