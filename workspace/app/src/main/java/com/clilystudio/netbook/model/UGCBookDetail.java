package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.util.Date;

public class UGCBookDetail {
    Author author;
    UGCBookDetail.UGCBookContainer[] books;
    String collectorCount;
    Date created;
    String desc;
    String shareLink;
    String title;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author paramAuthor) {
        this.author = paramAuthor;
    }

    public UGCBookDetail.UGCBookContainer[] getBooks() {
        return this.books;
    }

    public void setBooks(UGCBookDetail.UGCBookContainer[] paramArrayOfUGCBookContainer) {
        this.books = paramArrayOfUGCBookContainer;
    }

    public String getCollectorCount() {
        return this.collectorCount;
    }

    public void setCollectorCount(String paramString) {
        this.collectorCount = paramString;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String paramString) {
        this.desc = paramString;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String paramString) {
        this.shareLink = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public class UGCBookContainer {
        UGCBookItem book;
        String comment;

        public UGCBookItem getBook() {
            return this.book;
        }

        public void setBook(UGCBookItem paramUGCBookItem) {
            this.book = paramUGCBookItem;
        }

        public String getComment() {
            return this.comment;
        }

        public void setComment(String paramString) {
            this.comment = paramString;
        }

        public class UGCBookItem {
            private String _id;
            private String author;
            private String cover;
            private int latelyFollower;
            private String title;
            private long wordCount;

            public String getAuthor() {
                return this.author;
            }

            public void setAuthor(String paramString) {
                this.author = paramString;
            }

            public String getCover() {
                return this.cover;
            }

            public void setCover(String paramString) {
                this.cover = paramString;
            }

            public String getFullCover() {
                return ApiService.a + this.cover + "-covers";
            }

            public int getLatelyFollower() {
                return this.latelyFollower;
            }

            public void setLatelyFollower(int paramInt) {
                this.latelyFollower = paramInt;
            }

            public String getTitle() {
                return this.title;
            }

            public void setTitle(String paramString) {
                this.title = paramString;
            }

            public long getWordCount() {
                return this.wordCount;
            }

            public void setWordCount(long paramLong) {
                this.wordCount = paramLong;
            }

            public String get_id() {
                return this._id;
            }

            public void set_id(String paramString) {
                this._id = paramString;
            }
        }

    }

}

