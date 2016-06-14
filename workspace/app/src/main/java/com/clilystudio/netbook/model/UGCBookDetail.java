package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.util.Date;

public class UGCBookDetail {
    Author author;
    UGCBookContainer[] books;
    String collectorCount;
    Date created;
    String desc;
    String shareLink;
    String title;

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public UGCBookContainer[] getBooks() {
        return this.books;
    }

    public void setBooks(UGCBookContainer[] arruGCBookDetail$UGCBookContainer) {
        this.books = arruGCBookDetail$UGCBookContainer;
    }

    public String getCollectorCount() {
        return this.collectorCount;
    }

    public void setCollectorCount(String string) {
        this.collectorCount = string;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date date) {
        this.created = date;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String string) {
        this.desc = string;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String string) {
        this.shareLink = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public class UGCBookContainer {
        UGCBookItem book;
        String comment;

        public UGCBookItem getBook() {
            return this.book;
        }

        public void setBook(UGCBookItem uGCBookItem) {
            this.book = uGCBookItem;
        }

        public String getComment() {
            return this.comment;
        }

        public void setComment(String string) {
            this.comment = string;
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

            public void setAuthor(String string) {
                this.author = string;
            }

            public String getCover() {
                return this.cover;
            }

            public void setCover(String string) {
                this.cover = string;
            }

            public String getFullCover() {
                return ApiService.a + this.cover + "-covers";
            }

            public int getLatelyFollower() {
                return this.latelyFollower;
            }

            public void setLatelyFollower(int n) {
                this.latelyFollower = n;
            }

            public String getTitle() {
                return this.title;
            }

            public void setTitle(String string) {
                this.title = string;
            }

            public long getWordCount() {
                return this.wordCount;
            }

            public void setWordCount(long l) {
                this.wordCount = l;
            }

            public String get_id() {
                return this._id;
            }

            public void set_id(String string) {
                this._id = string;
            }
        }

    }

}
