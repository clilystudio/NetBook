package com.clilystudio.netbook.model;

import java.util.Date;

public class BookShelfSyncTime {
    private Date bookshelfUpdated;
    private String code;
    private boolean ok;

    public Date getBookshelfUpdated() {
        return this.bookshelfUpdated;
    }

    public void setBookshelfUpdated(Date paramDate) {
        this.bookshelfUpdated = paramDate;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

