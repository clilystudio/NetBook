
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot implements Serializable {

    private CategoryLevelRoot$CategoryLevel[] female;
    private CategoryLevelRoot$CategoryLevel[] male;
    private boolean ok;

    public CategoryLevelRoot$CategoryLevel[] getFemale()
    {
        return female;
    }

    public CategoryLevelRoot$CategoryLevel[] getMale()
    {
        return male;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setFemale(CategoryLevelRoot$CategoryLevel[] CategoryLevel_1darray1)
    {
        female = CategoryLevel_1darray1;
    }

    public void setMale(CategoryLevelRoot$CategoryLevel[] CategoryLevel_1darray1)
    {
        male = CategoryLevel_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
