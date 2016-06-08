package com.clilystudio.netbook.model;

public class CategoryBook extends BookSummary {
    private String majorCate;
    private String minorCate;

    public String getMajorCate() {
        return this.majorCate;
    }

    public void setMajorCate(String paramString) {
        this.majorCate = paramString;
    }

    public String getMinorCate() {
        return this.minorCate;
    }

    public void setMinorCate(String paramString) {
        this.minorCate = paramString;
    }
}

