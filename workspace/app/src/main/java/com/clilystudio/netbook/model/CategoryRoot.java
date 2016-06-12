
package com.clilystudio.netbook.model;

public class CategoryRoot {

    private CategoryRoot$Category[] female;
    private CategoryRoot$Category[] male;
    private boolean ok;

    public CategoryRoot$Category[] getFemale()
    {
        return female;
    }

    public CategoryRoot$Category[] getMale()
    {
        return male;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setFemale(CategoryRoot$Category[] Category_1darray1)
    {
        female = Category_1darray1;
    }

    public void setMale(CategoryRoot$Category[] Category_1darray1)
    {
        male = Category_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
