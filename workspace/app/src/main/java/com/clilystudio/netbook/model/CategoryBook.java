
package com.clilystudio.netbook.model;

public class CategoryBook extends BookSummary {

    private String majorCate;
    private String minorCate;

    public String getMajorCate()
    {
        return majorCate;
    }

    public String getMinorCate()
    {
        return minorCate;
    }

    public void setMajorCate(String String1)
    {
        majorCate = String1;
    }

    public void setMinorCate(String String1)
    {
        minorCate = String1;
    }
}
