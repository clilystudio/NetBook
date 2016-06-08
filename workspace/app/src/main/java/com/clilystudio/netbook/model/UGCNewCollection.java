package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UGCNewCollection
        implements Serializable {
    List<BookSummary> books = new ArrayList();
    private String desc;
    private String title;

    public void addBook(BookSummary paramBookSummary) {
        String str = paramBookSummary.getId();
        Iterator localIterator = this.books.iterator();
        while (localIterator.hasNext())
            if (str.equals(((BookSummary) localIterator.next()).getId()))
                return;
        this.books.add(paramBookSummary);
    }

    public List<BookSummary> getBooks() {
        return this.books;
    }

    public void setBooks(List<BookSummary> paramList) {
        this.books = paramList;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String paramString) {
        this.desc = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }
}

