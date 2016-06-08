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

    public void setImportant(int paramInt) {
        this.important = paramInt;
    }

    public Date getLastReadImportantTime() {
        return this.lastReadImportantTime;
    }

    public void setLastReadImportantTime(Date paramDate) {
        this.lastReadImportantTime = paramDate;
    }

    public Date getLastReadUnimportantTime() {
        return this.lastReadUnimportantTime;
    }

    public void setLastReadUnimportantTime(Date paramDate) {
        this.lastReadUnimportantTime = paramDate;
    }

    public int getUnimportant() {
        return this.unimportant;
    }

    public void setUnimportant(int paramInt) {
        this.unimportant = paramInt;
    }
}

