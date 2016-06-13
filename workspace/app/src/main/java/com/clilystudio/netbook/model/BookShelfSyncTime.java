package com.clilystudio.netbook.model;

import java.util.Date;

public class BookShelfSyncTime {
    private Date bookshelfUpdated;
    private String code;
    private boolean ok;

    public Date getBookshelfUpdated() {
        return this.bookshelfUpdated;
    }

    public void setBookshelfUpdated(Date date) {
        this.bookshelfUpdated = date;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
