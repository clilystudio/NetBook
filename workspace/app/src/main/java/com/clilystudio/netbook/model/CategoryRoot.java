package com.clilystudio.netbook.model;

public class CategoryRoot {
    private CategoryRoot.Category[] female;
    private CategoryRoot.Category[] male;
    private boolean ok;

    public CategoryRoot.Category[] getFemale() {
        return this.female;
    }

    public void setFemale(CategoryRoot.Category[] paramArrayOfCategory) {
        this.female = paramArrayOfCategory;
    }

    public CategoryRoot.Category[] getMale() {
        return this.male;
    }

    public void setMale(CategoryRoot.Category[] paramArrayOfCategory) {
        this.male = paramArrayOfCategory;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class Category {
        private int bookCount;
        private String name;

        public int getBookCount() {
            return this.bookCount;
        }

        public void setBookCount(int paramInt) {
            this.bookCount = paramInt;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String paramString) {
            this.name = paramString;
        }
    }
}

