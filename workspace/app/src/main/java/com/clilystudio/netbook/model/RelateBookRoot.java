package com.clilystudio.netbook.model;

import java.util.List;

public class RelateBookRoot
        extends Root {
    private static final long serialVersionUID = 692271766036187202L;
    private List<BookSummary> books;

    public List<BookSummary> getBooks() {
        return this.books;
    }

    public void setBooks(List<BookSummary> list) {
        this.books = list;
    }
}
