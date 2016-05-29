package com.clilystudio.app.netbook.model;

import java.util.Date;

public class NotifCountRoot extends Root {
    private int important;
    private Date lastReadImportantTime;
    private Date lastReadUnimportantTime;
    private int unimportant;

    public int getImportant() {
        return this.important;
    }

    public Date getLastReadImportantTime() {
        return this.lastReadImportantTime;
    }

    public Date getLastReadUnimportantTime() {
        return this.lastReadUnimportantTime;
    }

    public int getUnimportant() {
        return this.unimportant;
    }

    public void setImportant(int paramInt) {
        this.important = paramInt;
    }

    public void setLastReadImportantTime(Date paramDate) {
        this.lastReadImportantTime = paramDate;
    }

    public void setLastReadUnimportantTime(Date paramDate) {
        this.lastReadUnimportantTime = paramDate;
    }

    public void setUnimportant(int paramInt) {
        this.unimportant = paramInt;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.NotifCountRoot
 * JD-Core Version:    0.6.2
 */