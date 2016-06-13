package com.clilystudio.netbook.model;

public class BookTagRoot {
    private BookSummary[] books;
    private boolean ok;

    public BookSummary[] getBooks() {
        return this.books;
    }

    public void setBooks(BookSummary[] arrbookSummary) {
        this.books = arrbookSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
