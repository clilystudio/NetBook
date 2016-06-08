package com.clilystudio.netbook.model;

import java.io.Serializable;

public class CategoryLevelRoot
        implements Serializable {
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
}

