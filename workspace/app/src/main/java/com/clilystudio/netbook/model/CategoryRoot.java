package com.clilystudio.netbook.model;

public class CategoryRoot {
    private CategoryRoot$Category[] female;
    private CategoryRoot$Category[] male;
    private boolean ok;

    public CategoryRoot$Category[] getFemale() {
        return this.female;
    }

    public void setFemale(CategoryRoot$Category[] arrcategoryRoot$Category) {
        this.female = arrcategoryRoot$Category;
    }

    public CategoryRoot$Category[] getMale() {
        return this.male;
    }

    public void setMale(CategoryRoot$Category[] arrcategoryRoot$Category) {
        this.male = arrcategoryRoot$Category;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
