package com.clilystudio.app.netbook.model;

public class BookListRoot {
    private CategoryBook[] books;
    private boolean ok;

    public CategoryBook[] getBooks() {
        return this.books;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setBooks(CategoryBook[] paramArrayOfCategoryBook) {
        this.books = paramArrayOfCategoryBook;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.BookListRoot
 * JD-Core Version:    0.6.2
 */