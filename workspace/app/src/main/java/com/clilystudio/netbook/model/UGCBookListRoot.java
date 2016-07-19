package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.util.Date;

public class UGCBookListRoot {
    private UGCBook[] bookLists;
    private boolean ok;

    public UGCBook[] getBookLists() {
        return this.bookLists;
    }

    public void setBookLists(UGCBook[] ugcBooks) {
        this.bookLists = ugcBooks;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class UGCBook {
        private String _id;
        private String author;
        private int bookCount;
        private int collectorCount;
        private String cover;
        private String desc;
        private boolean isDraft;
        private String title;
        private Date updated;

        public String getAuthor() {
            return this.author;
        }

        public void setAuthor(String string) {
            this.author = string;
        }

        public int getBookCount() {
            return this.bookCount;
        }

        public void setBookCount(int n) {
            this.bookCount = n;
        }

        public int getCollectorCount() {
            return this.collectorCount;
        }

        public void setCollectorCount(int n) {
            this.collectorCount = n;
        }

        public String getCover() {
            return this.cover;
        }

        public void setCover(String string) {
            this.cover = string;
        }

        public String getDesc() {
            return this.desc;
        }

        public void setDesc(String string) {
            this.desc = string;
        }

        public String getFullCover() {
            return ApiService.mStaticsUrl + this.cover + "-covers";
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

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }

        public boolean isDraft() {
            return this.isDraft;
        }

        public void setIsDraft(boolean bl) {
            this.isDraft = bl;
        }
    }

}
