package com.clilystudio.netbook.model;

import java.util.List;

public class SearchResultRoot extends Root {
    private List<BookSummary> books;

    public List<BookSummary> getBooks() {
        return this.books;
    }

    public void setBooks(List<BookSummary> paramList) {
        this.books = paramList;
    }
}

