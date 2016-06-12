
package com.clilystudio.netbook.db;

import com.activeandroid.Model;

public class BookVisitRecord extends Model {

    public BookVisitRecord(String String1)
    {
        bookId = String1;
    }

    private String bookId;
    private boolean hasGroup;

    public BookVisitRecord()
    {
    }

    public String getBookId()
    {
        return bookId;
    }

    public boolean hasGroup()
    {
        return hasGroup;
    }

    public void setBookId(String String1)
    {
        bookId = String1;
    }

    public void setHasGroup(boolean boolean1)
    {
        hasGroup = boolean1;
    }
}
