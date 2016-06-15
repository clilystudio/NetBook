package com.clilystudio.netbook.model;

public class CategoryRoot {
    private Category[] female;
    private Category[] male;
    private boolean ok;

    public Category[] getFemale() {
        return this.female;
    }

    public void setFemale(Category[] categories) {
        this.female = categories;
    }

    public Category[] getMale() {
        return this.male;
    }

    public void setMale(Category[] categories) {
        this.male = categories;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
    public class Category {
        private int bookCount;
        private String name;

        public int getBookCount() {
            return this.bookCount;
        }

        public void setBookCount(int n) {
            this.bookCount = n;
        }

        public String getName() {
            return this.name;
        }

        public void setName(String string) {
            this.name = string;
        }
    }
}
