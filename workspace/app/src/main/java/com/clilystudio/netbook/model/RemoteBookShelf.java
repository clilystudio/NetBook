
package com.clilystudio.netbook.model;

import java.util.Date;

public class RemoteBookShelf {

    private RemoteBookShelf$Book[] bookshelf;
    private String code;
    private RemoteBookShelf$Book[] feedingBooks;
    private Date mSyncDate;
    private boolean ok;
    private boolean mNeedSync = true;

    public RemoteBookShelf$Book[] getBookShelfs()
    {
        return bookshelf;
    }

    public String getCode()
    {
        return code;
    }

    public RemoteBookShelf$Book[] getFeedingBooks()
    {
        return feedingBooks;
    }

    public Date getSyncDate()
    {
        return mSyncDate;
    }

    public int getTotalBookCounts()
    {
        int int1;
        RemoteBookShelf$Book[] Book_1darray2;
        int int3;

        if( bookshelf != null )
            int1 = bookshelf.length;
        else
            int1 = 0;
        Book_1darray2 = feedingBooks;
        int3 = 0;
        if( Book_1darray2 != null )
            int3 = feedingBooks.length;
        return int1 + int3;
    }

    public boolean isNeedSync()
    {
        return mNeedSync;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBookShelfs(RemoteBookShelf$Book[] Book_1darray1)
    {
        bookshelf = Book_1darray1;
    }

    public void setCode(String String1)
    {
        code = String1;
    }

    public void setFeedingBooks(RemoteBookShelf$Book[] Book_1darray1)
    {
        feedingBooks = Book_1darray1;
    }

    public void setNeedSync(boolean boolean1)
    {
        mNeedSync = boolean1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setSyncDate(Date Date1)
    {
        mSyncDate = Date1;
    }
}
