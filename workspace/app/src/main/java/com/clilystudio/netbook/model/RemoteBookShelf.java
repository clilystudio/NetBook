package com.clilystudio.netbook.model;

import java.util.Date;

public class RemoteBookShelf {
    private RemoteBookShelf.Book[] bookshelf;
    private String code;
    private RemoteBookShelf.Book[] feedingBooks;
    private boolean mNeedSync = true;
    private Date mSyncDate;
    private boolean ok;

    public RemoteBookShelf.Book[] getBookShelfs() {
        return this.bookshelf;
    }

    public void setBookShelfs(RemoteBookShelf.Book[] paramArrayOfBook) {
        this.bookshelf = paramArrayOfBook;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public RemoteBookShelf.Book[] getFeedingBooks() {
        return this.feedingBooks;
    }

    public void setFeedingBooks(RemoteBookShelf.Book[] paramArrayOfBook) {
        this.feedingBooks = paramArrayOfBook;
    }

    public Date getSyncDate() {
        return this.mSyncDate;
    }

    public void setSyncDate(Date paramDate) {
        this.mSyncDate = paramDate;
    }

    public int getTotalBookCounts() {
        if (this.bookshelf != null) ;
        for (int i = this.bookshelf.length; ; i = 0) {
            RemoteBookShelf.Book[] arrayOfBook = this.feedingBooks;
            int j = 0;
            if (arrayOfBook != null)
                j = this.feedingBooks.length;
            return i + j;
        }
    }

    public boolean isNeedSync() {
        return this.mNeedSync;
    }

    public void setNeedSync(boolean paramBoolean) {
        this.mNeedSync = paramBoolean;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

