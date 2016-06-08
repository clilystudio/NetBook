package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.util.Date;

public class UGCBookListRoot {
    private UGCBookListRoot.UGCBook[] bookLists;
    private boolean ok;

    public UGCBookListRoot.UGCBook[] getBookLists() {
        return this.bookLists;
    }

    public void setBookLists(UGCBookListRoot.UGCBook[] paramArrayOfUGCBook) {
        this.bookLists = paramArrayOfUGCBook;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
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

        public void setAuthor(String paramString) {
            this.author = paramString;
        }

        public int getBookCount() {
            return this.bookCount;
        }

        public void setBookCount(int paramInt) {
            this.bookCount = paramInt;
        }

        public int getCollectorCount() {
            return this.collectorCount;
        }

        public void setCollectorCount(int paramInt) {
            this.collectorCount = paramInt;
        }

        public String getCover() {
            return this.cover;
        }

        public void setCover(String paramString) {
            this.cover = paramString;
        }

        public String getDesc() {
            return this.desc;
        }

        public void setDesc(String paramString) {
            this.desc = paramString;
        }

        public String getFullCover() {
            return ApiService.a + this.cover + "-covers";
        }

        public String getTitle() {
            return this.title;
        }

        public void setTitle(String paramString) {
            this.title = paramString;
        }

        public Date getUpdated() {
            return this.updated;
        }

        public void setUpdated(Date paramDate) {
            this.updated = paramDate;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }

        public boolean isDraft() {
            return this.isDraft;
        }

        public void setIsDraft(boolean paramBoolean) {
            this.isDraft = paramBoolean;
        }
    }


}

