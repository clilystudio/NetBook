package com.clilystudio.app.netbook.model;

public class BookTagRoot {
    private BookSummary[] books;
    private boolean ok;

    public BookSummary[] getBooks() {
        return this.books;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setBooks(BookSummary[] paramArrayOfBookSummary) {
        this.books = paramArrayOfBookSummary;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.BookTagRoot
 * JD-Core Version:    0.6.2
 */