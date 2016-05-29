package com.clilystudio.app.netbook.db;

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

    public BookVisitRecord(String paramString) {
        this.bookId = paramString;
    }

    public String getBookId() {
        return this.bookId;
    }

    public boolean hasGroup() {
        return this.hasGroup;
    }

    public void setBookId(String paramString) {
        this.bookId = paramString;
    }

    public void setHasGroup(boolean paramBoolean) {
        this.hasGroup = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.BookVisitRecord
 * JD-Core Version:    0.6.2
 */