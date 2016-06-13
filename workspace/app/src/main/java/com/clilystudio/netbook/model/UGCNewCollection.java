package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UGCNewCollection
        implements Serializable {
    List<BookSummary> books = new ArrayList<BookSummary>();
    private String desc;
    private String title;

    public void addBook(BookSummary bookSummary) {
        String string = bookSummary.getId();
        Iterator<BookSummary> iterator = this.books.iterator();
        while (iterator.hasNext()) {
            if (!string.equals(iterator.next().getId())) continue;
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
