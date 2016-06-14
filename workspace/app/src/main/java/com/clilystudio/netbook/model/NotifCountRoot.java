package com.clilystudio.netbook.model;

import java.util.Date;

public class NotifCountRoot extends Root {
    private int important;
    private Date lastReadImportantTime;
    private Date lastReadUnimportantTime;
    private int unimportant;

    public int getImportant() {
        return this.important;
    }

    public void setImportant(int n) {
        this.important = n;
    }

    public Date getLastReadImportantTime() {
        return this.lastReadImportantTime;
    }

    public void setLastReadImportantTime(Date date) {
        this.lastReadImportantTime = date;
    }

    public Date getLastReadUnimportantTime() {
        return this.lastReadUnimportantTime;
    }

    public void setLastReadUnimportantTime(Date date) {
        this.lastReadUnimportantTime = date;
    }

    public int getUnimportant() {
        return this.unimportant;
    }

    public void setUnimportant(int n) {
        this.unimportant = n;
    }
}
