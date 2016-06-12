
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot$CategoryLevel implements Serializable {

    public CategoryLevelRoot$CategoryLevel(CategoryLevelRoot CategoryLevelRoot1)
    {
        this$0 = CategoryLevelRoot1;
    }

    private String major;
    private String[] mins;
    CategoryLevelRoot this$0;     // final access specifier removed

    public String getMajor()
    {
        return major;
    }

    public String[] getMins()
    {
        return mins;
    }

    public void setMajor(String String1)
    {
        major = String1;
    }

    public void setMins(String[] String_1darray1)
    {
        mins = String_1darray1;
    }
}
