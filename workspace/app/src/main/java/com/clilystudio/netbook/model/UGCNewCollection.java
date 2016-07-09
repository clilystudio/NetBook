package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class UGCNewCollection implements Serializable {
    List<BookSummary> books = new ArrayList<>();
    private String desc;
    private String title;

    public void addBook(BookSummary bookSummary) {
        String string = bookSummary.getId();
        for (BookSummary book : this.books) {
            if (!string.equals(book.getId())) continue;
            return;
        }
        this.books.add(bookSummary);
    }

    public List<BookSummary> getBooks() {
        return this.books;
    }

    public void setBooks(List<BookSummary> list) {
        this.books = list;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String string) {
        this.desc = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }
}
