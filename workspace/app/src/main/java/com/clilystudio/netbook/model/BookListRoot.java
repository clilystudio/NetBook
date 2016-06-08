package com.clilystudio.netbook.model;

public class BookListRoot {
    private CategoryBook[] books;
    private boolean ok;

    public CategoryBook[] getBooks() {
        return this.books;
    }

    public void setBooks(CategoryBook[] paramArrayOfCategoryBook) {
        this.books = paramArrayOfCategoryBook;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

