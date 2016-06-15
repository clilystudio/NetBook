package com.clilystudio.netbook.model;

import java.util.Date;

public class RemoteBookShelf {
    private RemoteBookShelf$Book[] bookshelf;
    private String code;
    private RemoteBookShelf$Book[] feedingBooks;
    private boolean mNeedSync = true;
    private Date mSyncDate;
    private boolean ok;

    public RemoteBookShelf$Book[] getBookShelfs() {
        return this.bookshelf;
    }

    public void setBookShelfs(RemoteBookShelf$Book[] arrremoteBookShelf$Book) {
        this.bookshelf = arrremoteBookShelf$Book;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public RemoteBookShelf$Book[] getFeedingBooks() {
        return this.feedingBooks;
    }

    public void setFeedingBooks(RemoteBookShelf$Book[] arrremoteBookShelf$Book) {
        this.feedingBooks = arrremoteBookShelf$Book;
    }

    public Date getSyncDate() {
        return this.mSyncDate;
    }

    public void setSyncDate(Date date) {
        this.mSyncDate = date;
    }

    /*
     * Enabled aggressive block sorting
     */
    public int getTotalBookCounts() {
        int n = this.bookshelf != null ? this.bookshelf.length : 0;
        RemoteBookShelf$Book[] arrremoteBookShelf$Book = this.feedingBooks;
        int n2 = 0;
        if (arrremoteBookShelf$Book != null) {
            n2 = this.feedingBooks.length;
        }
        return n + n2;
    }

    public boolean isNeedSync() {
        return this.mNeedSync;
    }

    public void setNeedSync(boolean bl) {
        this.mNeedSync = bl;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }


    public class RemoteBookShelf$Book {
        final /* synthetic */ RemoteBookShelf this$0;
        private String _id;
        private String author;
        private int chaptersCount;
        private String cover;
        private boolean hasCp;
        private String lastChapter;
        private String title;
        private Date updated;

        public RemoteBookShelf$Book(RemoteBookShelf remoteBookShelf) {
            this.this$0 = remoteBookShelf;
        }

        public String getAuthor() {
            return this.author;
        }

        public void setAuthor(String string) {
            this.author = string;
        }

        public int getChaptersCount() {
            return this.chaptersCount;
        }

        public void setChaptersCount(int n) {
            this.chaptersCount = n;
        }

        public String getCover() {
            return this.cover;
        }

        public void setCover(String string) {
            this.cover = string;
        }

        public String getId() {
            return this._id;
        }

        public void setId(String string) {
            this._id = string;
        }

        public String getLastChapter() {
            return this.lastChapter;
        }

        public void setLastChapter(String string) {
            this.lastChapter = string;
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String string) {
            this.title = string;
        }

        public Date getUpdated() {
            return this.updated;
        }

        public void setUpdated(Date date) {
            this.updated = date;
        }

        public boolean isHasCp() {
            return this.hasCp;
        }

        public void setHasCp(boolean bl) {
            this.hasCp = bl;
        }
    }

}
