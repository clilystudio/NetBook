package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;

@Table(name = "BookVisitRecord")
public class BookVisitRecord extends Model {
    @Column(name = "bookId")
    private String bookId;
    @Column(name = "hasGroup")
    private boolean hasGroup;

    public BookVisitRecord() {
    }

    public BookVisitRecord(String string) {
        this.bookId = string;
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String string) {
        this.bookId = string;
    }

    public boolean hasGroup() {
        return this.hasGroup;
    }

    public void setHasGroup(boolean bl) {
        this.hasGroup = bl;
    }
}
