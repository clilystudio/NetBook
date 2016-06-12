package com.clilystudio.netbook.db;

import com.activeandroid.Model;

public class BookVisitRecord extends Model {

    private String bookId;
    private boolean hasGroup;
    public BookVisitRecord(String String1) {
        bookId = String1;
    }

    public BookVisitRecord() {
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String String1) {
        bookId = String1;
    }

    public boolean hasGroup() {
        return hasGroup;
    }

    public void setHasGroup(boolean boolean1) {
        hasGroup = boolean1;
    }
}
